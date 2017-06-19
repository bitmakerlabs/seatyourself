# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(
  name: 'Porch Restaurant',
  address: "1 First Lane",
  phone_number: 4161234567,
  email: 'porchrest@gmail.com',
  capacity: 100,
  time_open: 1100,
  time_close: 2300,
  cuisine: 'American',
  url: 'http://i.imgur.com/FlozbQQ.jpg?1',
  summary: 'All Day Breakfast!',
  price: 100
)

Restaurant.create(
  name: 'Thai Restaurant',
  address: "2 First Lane",
  phone_number: 4161234567,
  email: 'thairest@gmail.com',
  capacity: 200,
  time_open: 1100,
  time_close: 2300,
  cuisine: 'Thai',
  url: 'http://i.imgur.com/TzCovws.jpg',
  summary: 'Best Thai in town!',
  price: 50
)

Restaurant.create(
  name: 'Sushi Restaurant',
  address: "3 First Lane",
  phone_number: 4161234567,
  email: 'sushirest@gmail.com',
  capacity: 50,
  time_open: 1100,
  time_close: 2300,
  cuisine: 'Sushi',
  url: 'http://i.imgur.com/IscC0d4.jpg',
  summary: 'Bestb Sushi in Toronto! ',
  price: 100
)
