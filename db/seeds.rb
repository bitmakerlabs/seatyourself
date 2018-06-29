# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(email: "jeff@rothwell.com", kind: "owner", password: "password")
user2 = User.create(email: "scott@huston.com", kind: "owner", password: "password")
user3 = User.create(email: "danny@chang.com", kind: "owner", password: "password")

user1.create_restaurant(name: "Jeff's Burrito Joint", description: "Good burritos",
  open_time: Time.new(2018, 1, 23, 13), close_time: Time.new(2018, 1, 23, 23), capacity: 20,
  price: 3, address: "123 Some St. Toronto, ON")
user2.create_restaurant(name: "Scott's Rib House", description: "Cheap, mediocre ribs.",
  open_time: Time.new(2018, 1, 23, 11), close_time: Time.new(2018, 1, 23, 22), capacity: 30,
  price: 1, address: "245 Another Rd. Toronto, ON")
user3.create_restaurant(name: "Danny's Poutine and Fish-fry", description: "Fried fish and potatoes",
  open_time: Time.new(2018, 1, 23, 7), close_time: Time.new(2018, 1, 23, 21), capacity: 200,
  price: 4, address: "536 Random Ave. Toronto, ON")
