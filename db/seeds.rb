# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "asian")
Category.create(name: "italian")
Category.create(name: "american")
Restaurant.create(
  name: "Chico Resto",
  description: "This is an opium den with great nachos!",
  capacity: 10,
  category_id: 3,
)
Restaurant.create(
  name: "Butt Fuggers",
  description: "This is an upscale restaurant with high-class clientele.",
  capacity: 10,
  category_id: 2,
)
Restaurant.create(
  name: "Pudding",
  description: "Exotic Indian cuisine and serving all your pudding needs since 1963.",
  capacity: 10,
  category_id: 1,
)
Restaurant.create(
  name: "Day Ol' Discount",
  description: "Cheap eats like you've never seen before! The food's a day old, too",
  capacity: 10,
  category_id: 3,
)
