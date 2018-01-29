# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create!(email: 'admin@example.com', 
										 password: 'adminpassword', 
										 role: 'admin', 
										 name: 'The', 
										 surname: 'Admin')

10.times do
  User.create!([{ name: Faker::Internet.user_name, 
  								surname: Faker::StarWars.planet, 
  								email: Faker::Internet.free_email, 
  								password: 'password', 
  								role: 'user'}])
end

5.times do
	Category.create!([{ title: Faker::Music.instrument }])
end

30.times do
  Establishment.create!([{title: Faker::RockBand.name, 
  												description: Faker::StarWars.quote, 
  												status: 'active', 
  												image: File.new("#{Rails.root}/app/assets/images/sampleimages/#{rand(1..10)}.jpg"), 
  												user_id: User.all.sample.id,
  												category_id: Category.all.sample.id }])
end