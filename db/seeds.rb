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
  opening_hours: Time.now,
  capacity: "150",
  user_id: user.id,
  name: "OKAY"
)

Restaurant.create(
  address: "1 Yonge Street",
  city: "Toronto",
  price_range: "$$",
  summary: "Mongolian hot pot",
  menu: "not available",
  opening_hours: "9am - 10pm",
  capacity: "200",
  user_id: user.id,
  name: "Mongolian Style"
)

Restaurant.create(
  address: "200 Bay Street",
  city: "Toronto",
  price_range: "$$$$",
  summary: "Surf and Turf, fine dining",
  menu: "coming soon!",
  opening_hours: "11am - 11pm",
  capacity: "100",
  user_id: user.id,
  name: "surfs up!"
)
