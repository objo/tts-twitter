class Tweet < ApplicationRecord
  belongs_to :user

  has_many :tweet_tags
  has_many :tags, through: :tweet_tags

  def self.tweets_for(user_ids)
    where(user_id: user_ids).order('created_at DESC')
  end
end
