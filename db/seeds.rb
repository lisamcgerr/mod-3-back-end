# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
User.destroy_all
Destination.destroy_all
Itinerary.destroy_all

10.times do
    User.create(
        name: Faker::Name.unique.name,
        age: Faker::Number.within(range: 16..80),
        address: Faker::Address.city,
        email: Faker::Internet.safe_email
    )
end


Destination.create(city: "Berlin", hotel: "Hotel of Berlin" , restaurant: Faker::Restaurant.unique.name)
Destination.create(city: "Dubai", hotel: "Hotel of Dubai", restaurant: Faker::Restaurant.unique.name)
Destination.create(city: "Phuket", hotel: "Hotel of Phuket", restaurant: Faker::Restaurant.unique.name)
Destination.create(city: "Paris", hotel: "Hotel of Paris", restaurant: Faker::Restaurant.unique.name)
Destination.create(city: "Cape Town", hotel: "Hotel of Cape Town", restaurant: Faker::Restaurant.unique.name)
Destination.create(city: "Tokyo", hotel: "Hotel of Tokyo", restaurant: Faker::Restaurant.unique.name)
Destination.create(city: "Auckland", hotel: "Hotel of Auckland", restaurant: Faker::Restaurant.unique.name)
Destination.create(city: "Cario", hotel: "Hotel of Cario", restaurant: Faker::Restaurant.unique.name)
Destination.create(city: "Buenos Aires", hotel: "Hotel of Buenos Aires", restaurant: Faker::Restaurant.unique.name)
Destination.create(city: "Bishkek", hotel: "Hotel of Bishkek", restaurant: Faker::Restaurant.unique.name)


user_id = User.all.map { |user| user.id }
destination_id = Destination.all.map { |destination| destination.id }


10.times do
    Itinerary.create(
        user_id: user_id.sample,
        destination_id: destination_id.sample
    )
end



puts "After seeding: "
puts "#{User.all.count} users"
puts "#{Destination.all.count} destinations"
puts "#{Itinerary.all.count} itineraries"