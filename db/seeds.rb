# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = "password"

User.populate 20 do |user|
  user.username = Faker::Name.name
  user.email = Faker::Internet.email
  user.encrypted_password = User.new(:password => password).encrypted_password
  # rest of your code here    
  
  Post.populate 5 do |post|
    post.user_id = user.id
    post.date = Faker::Date.in_date_period
    post.title = Faker::Music.album
    post.artist = Faker::Music.band
    post.medium = Faker::Name.name
    post.genre = Faker::Music.genre
    post.created_at = 2.years.ago..Time.now
  end

end