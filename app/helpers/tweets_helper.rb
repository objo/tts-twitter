module TweetsHelper

  def get_tagged(tweet)
    puts "[DBG] I'm here"
    message_array = tweet.message.split
    puts "[DBG] THe message is #{tweet.message}"
    message_array.each_with_index do |word, index|
      puts "[DBG] The word is #{word} at index #{index}"
      if word[0] == "#"
        puts "[DBG] I'm working with the tag #{word}"
        if Tag.pluck(:phrase).include?(word)
          tag = Tag.find_by(phrase: word)
        else
          tag = Tag.create(phrase: word)
        end
        tweet_tag = TweetTag.create(tweet_id: tweet.id, tag_id: tag.id)
        message_array[index] = "<a href='/tag_tweets?id=#{tag.id}'>#{word}</a>"
        puts "[DBG] Just replaced #{word} with #{message_array[index]}"
      end
    end

    tweet.update(message: message_array.join(" "))
    return tweet
  end

end
