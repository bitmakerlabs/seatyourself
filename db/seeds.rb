# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(
  name: "kevin",
  email: "kevindiep@fakemail.com"
)

Restaurant.create(
  address: "353 Bay Street",
  city: "Toronto",
  price_range: "$$$",
  summary: "Authentic Japanese cuisine",
  menu: "not available",
  capacity: 150,
  user_id: 1,
  name: "Miku"

)

Restaurant.create(
  address: "1 Yonge Street",
  city: "Toronto",
  price_range: "$$",
  summary: "Mongolian hot pot",
  menu: "not available",
  capacity: 200,
  user_id: 1,
  name: "Mongolian Style"
)

Restaurant.create(
  address: "200 Bay Street",
  city: "Toronto",
  price_range: "$$$$",
  summary: "Surf and Turf, fine dining",
  menu: "coming soon!",
  capacity: 100,
  user_id: 1,
  name: "surfs up!"
)

Reservation.create(
  restaurant_id: 10,
  user_id: 4,
  time: Time.now,
  number_of_guests: 10
)
