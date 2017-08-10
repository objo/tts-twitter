# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def create_tweets_for(user)
  user.tweets.create!(message: Faker::Company.catch_phrase)
end

unless User.find_by(username: 'objo')
  joe = User.create!(name: 'joe', username: 'objo', location: 'columbus, OH', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', email: 'joe@objo.com', password: '12345678')

  10.times { create_tweets_for(joe) }
end

if Tweet.count < 10
  joe = User.find_by(username: 'objo')

  10.times do |x|
    user = User.create!(name: Faker::Name.name, username: Faker::Internet.user_name, location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", email: Faker::Internet.email, password: Faker::Number.number(10))
    puts "Created user: #{user.username}"

    20.times do |x|
      create_tweets_for(user)
    end

    joe.following << user.id
    puts "joe.following is now #{joe.following}"
    joe.save!
  end
end
