# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(name: "Jeff's Burrito Joint", description: "Good burritos",
  open_time: Time.new(2018, 1, 23, 13), close_time: Time.new(2018, 1, 23, 23), capacity: 20,
  price: 3, user_id: 1)
Restaurant.create(name: "Scott's Rib House", description: "Cheap, mediocre ribs.",
  open_time: Time.new(2018, 1, 23, 11), close_time: Time.new(2018, 1, 23, 22), capacity: 30,
  price: 1, user_id: 2)
Restaurant.create(name: "Danny's Poutine and Fish-fry", description: "Fried fish and potatoes",
  open_time: Time.new(2018, 1, 23, 7), close_time: Time.new(2018, 1, 23, 21), capacity: 200,
  price: 4, user_id: 3)
