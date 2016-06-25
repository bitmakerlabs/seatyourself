#Whenever we edit this file, we must go to the console and do:
# $ bundle exec rake db:seed
# If we don't rake this file, the changes won't display anywhere
# on the site.

Restaurant.destroy_all

Restaurant.create(
  name:'McDonalds',
  cuisine: 'Fast Food',
  opening_time: 10,
  closing_time: 24,
  capacity: 20,
  address: '1234 Yonge St',
  phone: '123456789',
  url: 'mcdonalds.com'
  )

Restaurant.create(
  name: 'Burger King',
  cuisine: 'Fast Food',
  opening_time: 10.00,
  closing_time: 24.00,
  capacity: 25,
  address: '2234 Yonge St',
  phone: '223456789',
  url: 'bk.com'
)

Restaurant.create(
  name: 'Wendys',
  cuisine: 'Fast Food',
  opening_time: 10.00,
  closing_time: 24.00,
  capacity: 15,
  address: '334 Yonge St',
  phone: '333456789',
  url: 'wendys.com'
)

Restaurant.create(
  name: 'Taco Bell',
  cuisine: 'Fast Food',
  opening_time: 10.00,
  closing_time: 24.00,
  capacity: 10,
  address: '4434 Yonge St',
  phone: '443456789',
  url: 'tacobell.com'
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
