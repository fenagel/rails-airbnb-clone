# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Car.delete_all
User.delete_all

10.times do
  User.create(email: Faker::Internet.email, password: Faker::Beer.brand)
end

Car.create(name: Faker::FunnyName.two_word_name,
           brand: 'Alfa Romeo',
           model: '2000 Spider',
           renting_price: 80,
           location: 'Berlin',
           experience: 3, user_id: 55,
           description: 'Carburettor model, 116\'500 km, service booklet.
           Beautiful and well maintained spider with power windows,
           contemporary Zender body-kit and optional Hardtop.
           Very good condition. Last Swiss MOT including veteran status
           completed in October 2017.')

Car.create(name: Faker::FunnyName.two_word_name,
           brand: 'Austin-Healey',
           model: '3000 Mk III BJ8',
           renting_price: 80,
           location: 'Zurich',
           experience: 5, user_id: 54,
           description: 'Restored with original factory parts.
           Body partially in alloy, new zinc plated chassis.
           sports-cam, steel crankshaft and connecting rods, forged pistons,
           alloy cylinder-head, stainless-steel exhaust with headers,
           "Fast-Flow" intake manifold with 2 SU-HD8 carburettors, alloy fuel
           tank, reinforced torsion-bars, reinforced leaf-springs,
           Sierra-Cosworth 5-speed gearbox, limited slip differential,
           a.s.o. Good to very good condition. The most recent Swiss MOT
           including veteran status dates from May 2020')

Car.create(name: Faker::FunnyName.two_word_name,
           brand: 'Bentley',
           model: 'Mulsanne Turbo',
           renting_price: 500,
           location: 'Berlin',
           experience: 4, user_id: 53,
           description: '78\'000 km, service booklet. Partial restoration
           between 2017 and 2019: dashboard with new leather upholstery,
           wooden applications restored, new air-conditioning compressor,
           new tires, a.s.o. Receipts for about CHF 20\'000.- are available.
           Good to very good condition. Last Swiss MOT including veteran status
           completed in October 2015.')

Car.create(name: Faker::FunnyName.two_word_name,
           brand: 'BMW',
           model: ' 2000 CA',
           renting_price: 1000,
           location: 'Montreux',
           experience: 1, user_id: 52,
           description: 'Rare Swiss delivered BMW 2000 Coupe with automatic
           gearbox. At the same owner since 2015, the body has been completely
           restored. The interior presents itself in very well maintained
           condition, engine and gearbox are in well maintained original
           condition. The last Swiss MOT was completed in May 2020')

Car.create(name: Faker::FunnyName.two_word_name,
           brand: 'BMW',
           model: '635 CSi',
           renting_price: 30,
           location: 'Berlin',
           experience: 0, user_id: 51,
           description: 'This BMW was delivered on the 12th March 1985
           through Allmend Garage in Wohlen/AG. It’s a 5-speeder with leather
           interior, electrically operated windows and a sliding roof. The 635
           has been driven only 103’000 km, still has its service booklet and
           is in good to very good and well cared-for original condition.
           The last Swiss Veteran MOT was completed in August 2018.')

Car.create(name: Faker::FunnyName.two_word_name,
           brand: 'Cadillac',
           model: '370A V12',
           renting_price: 200,
           location: 'Berlin',
           experience: 5, user_id: 50,
           description: 'In the late Twenties and early Thirties the
           automotive race in the USA for bigger, better and faster was
           in full swing and manufacturers resorted to ever larger engines
           with a number of manufacturers introducing 12 and even 16 cylinder
           engines. Only few people could afford such extravagance and the
           12 cylinder Cadillac we have on offer is a very rare sight indeed')

Car.create(name: Faker::FunnyName.two_word_name,
           brand: 'Chevrolet',
           model: 'Corvette C1',
           renting_price: 400,
           location: 'Geneva',
           experience: 2, user_id: 49,
           description: 'Automatic transmission.
           Early Corvette with the Blue-Flame 6 cylinder engine.
           Only 3\'640 cars built. Original delivery invoice with the car.
           Matching-Numbers. Restored some years ago. Very good condition.
           Swiss veteran registration')

Car.create(name: Faker::FunnyName.two_word_name,
           brand: 'Citroën',
           model: 'Méhari 4x4',
           renting_price: 20,
           location: 'Frankfurt',
           experience: 1, user_id: 48,
           description: 'Only 1\'213 cars built Uprated for the Army of Andorra
           to a Citroën GS 4 cylinder engine and gearbox - homologated in
           Germany. Technically in very good condition. Body and interior in
           original condition. Last Swiss MOT including veteran status
           completed in September 2015.')

