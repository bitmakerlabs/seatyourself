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
  url: 'http://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2015/04/07/102566696-sirloin-third-pound-burgers.1910x1000.jpg'
  )

Restaurant.create(
  name: 'Burger King',
  cuisine: 'Fast Food',
  opening_time: 10.00,
  closing_time: 24.00,
  capacity: 25,
  address: '2234 Yonge St',
  phone: '223456789',
  url: 'http://www.seriouseats.com/recipes/assets_c/2015/07/20150728-homemade-whopper-food-lab-35-thumb-1500xauto-425129.jpg'
)

Restaurant.create(
  name: 'Wendy\'s',
  cuisine: 'Fast Food',
  opening_time: 10.00,
  closing_time: 24.00,
  capacity: 15,
  address: '334 Yonge St',
  phone: '333456789',
  url: 'http://i.huffpost.com/gen/882514/images/o-MOST-BUZZED-BURGERS-facebook.jpg'
)

Restaurant.create(
  name: 'Taco Bell',
  cuisine: 'Fast Food',
  opening_time: 10.00,
  closing_time: 24.00,
  capacity: 10,
  address: '4434 Yonge St',
  phone: '443456789',
  url: 'http://media2.s-nbcnews.com/i/newscms/2015_33/724261/food-taco-bell-ryan-scott-today-150810-tease-01_6c8fe2ca985c6312bbbebfd46b5a75a0.jpg'
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
