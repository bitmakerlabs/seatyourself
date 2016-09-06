# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  first_name: "John",
  last_name: "Owner",
  email: "owner@email.com",
  password: "password1",
  password_confirmation: "password1"
)

Cuisine.create(
  name: "Mexican"
)

Cuisine.create(
  name: "Japanese"
)

Restaurant.create(
  name: "El Caballito",
  address: "220 King St W, Toronto",
  phone_number: "4162123456",
  cuisine_id: 1,
  description: "Loungey hot spot offering a big tequila selection, margaritas & a full menu of Mexican street fare.",
  opens_at: "8:00",
  closes_at: "10:00",
  owner_id: 1,
  seats: 25
)

Restaurant.create(
  name: "Burrito Boyz",
  address: "224 Adelaide St W, Toronto",
  phone_number: "4168546547",
  cuisine_id: 1,
  description: "Mexican outlet with limited seating offering sizable meat, seafood & vegetarian burritos.",
  opens_at: "8:00",
  closes_at: "10:00",
  owner_id: 1,
  seats: 20
)

Restaurant.create(
  name: "Gallery Sushi",
  address: "275 Dundas Street W, Toronto",
  phone_number: "4168548754",
  cuisine_id: 2,
  description: "Casual standby offering creative sushi rolls & other Japanese fare in simple environs.",
  opens_at: "8:00",
  closes_at: "10:00",
  owner_id: 1,
  seats: 30
)
