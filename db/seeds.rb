# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all

Restaurant.create(
  name: "Burrito Boyz",
  address: "123 Queen St.",
  neighborhood: "Queen West",
  price_range: "$$",
  menu: "www.BurritoBoyz.ca",
  summary: "get rekt in the can after this meal"
)

Restaurant.create(
  name: "Elephant Castle",
  address: "567 Simcoe St.",
  neighborhood: "Financial District",
  price_range: "$$$",
  menu: "www.ElephantCastle.com",
  summary: "no skinny wallets here bro, make sure you wear an extra size waist"
)

Restaurant.create(
  name: "Pizza Hut",
  address: "845 Dough Drive",
  neighborhood: "ShroomVille",
  price_range: "$",
  menu: "www.pizzahut.ca",
  summary: "deep dish for your deep desires"
)
