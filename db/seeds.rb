# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  User.create(email: "lea@gjed.org", password: "jhwfebs")
end
40.times do
  Car.create(name: Faker::Vehicle.color, brand: Faker::Vehicle.manufacture,
             model: Faker::Vehicle.model,
             renting_price: Faker::Vehicle.year,
             location: Faker::Address.city,
             experience: 1, user_id: rand(1..2)
            )
end
