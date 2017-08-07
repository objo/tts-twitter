# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
joe = User.create!(name: 'joe', username: 'objo', location: 'columbus, OH', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', email: 'joe@objo.com', password: '12345678')

joe.tweets.create!(message: "my first tweet")
joe.tweets.create!(message: "my second tweet")
joe.tweets.create!(message: "my third tweet")
joe.tweets.create!(message: "my fourth tweet")
joe.tweets.create!(message: "my fifth tweet")

tom = User.create!(name: 'thomas', username: 'timmy', location: 'memphis, tn', bio: 'back in the day ...', email: 'tim@no.com', password: '12345678')

tom.tweets.create!(message: 'hello number 1')
tom.tweets.create!(message: 'hello number 2')
tom.tweets.create!(message: 'hello number 3')
tom.tweets.create!(message: 'hello number 4')
tom.tweets.create!(message: 'hello number 5')
