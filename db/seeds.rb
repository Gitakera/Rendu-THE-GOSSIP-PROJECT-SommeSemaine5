# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
a = Random.new
20.times do

   Citie.create!(name: Faker::Nation.capital_city, zip_code: "#{Faker::Demographic.demonym} #{a.rand(50..300)} ")

end

10.times do

User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::TvShows::Seinfeld.quote, email: Faker::Internet.email, age: Faker::Number.between(18, 100), citie_id: a.rand(1..20))
	
end


25.times do

   Citie.create!(name: Faker::Nation.capital_city, zip_code: "#{Faker::Demographic.demonym} #{a.rand(50..300)} ")

end

20.times do

User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::TvShows::Seinfeld.quote, email: Faker::Internet.email, age: Faker::Number.between(18, 100), citie_id: a.rand(1..20))
	
end

15.times do

Gossip.create!(title: Faker::TvShows::GameOfThrones.character, content: Faker::TvShows::GameOfThrones.quote,  user_id: a.rand(1..20))
	
end

20.times do

Tag.create!(title: Faker::Hipster.word)
	
end

20.times do

Bromancebe.create!(tag_id: a.rand(1..20),gossip_id: a.rand(1..15))
	
end

5.times do

 Comment.create!(content: Faker::TvShows::Seinfeld.quote,user_id: a.rand(1..15),gossip_id: a.rand(1..15))
	
end

20.times do

   Ucomment.create!(content: Faker::TvShows::Seinfeld.quote,user_id: a.rand(1..15),comment_id: a.rand(1..5))
     
end