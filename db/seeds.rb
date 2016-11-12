# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create(
name: "Burger's Priest",
max_seats: 50,
location: "toronto",
cuisine: "burgers",
open_time: 11,
close_time: 23,
)

Restaurant.create(
name: "Holy Chuck",
max_seats: 40,
location: "toronto",
cuisine: "burgers",
open_time: 11,
close_time: 23,
)

Restaurant.create(
name: "Pizza Gigi",
max_seats: 29,
location: "toronto",
cuisine: "pizza",
open_time: 16,
close_time: 23,
)

Restaurant.create(
name: "Bitondos",
max_seats: 16,
location: "toronto",
cuisine: "pizza",
open_time: 10,
close_time: 20,
)

Restaurant.create(
name: "North of Brooklyn",
max_seats: 80,
location: "toronto",
cuisine: "pizza",
open_time: 11,
close_time: 23,
)

Restaurant.create(
name: "New Sky",
max_seats: 100,
location: "toronto",
cuisine: "chinese",
open_time: 5,
close_time: 23,
)

Restaurant.create(
name: "Rol San",
max_seats: 200,
location: "toronto",
cuisine: "chinese",
open_time: 6,
close_time: 22,
)

Restaurant.create(
name: "Burger's Priest",
max_seats: 50,
location: "vancouver",
cuisine: "burgers",
open_time: 11,
close_time: 23,
)

Restaurant.create(
name: "Holy Chuck",
max_seats: 40,
location: "vancouver",
cuisine: "burgers",
open_time: 11,
close_time: 23,
)

Restaurant.create(
name: "Pizza Gigi",
max_seats: 29,
location: "vancouver",
cuisine: "pizza",
open_time: 16,
close_time: 23,
)

Restaurant.create(
name: "Bitondos",
max_seats: 16,
location: "vancouver",
cuisine: "pizza",
open_time: 10,
close_time: 20,
)

Restaurant.create(
name: "North of Brooklyn",
max_seats: 80,
location: "vancouver",
cuisine: "pizza",
open_time: 11,
close_time: 23,
)

Restaurant.create(
name: "New Sky",
max_seats: 100,
location: "vancouver",
cuisine: "chinese",
open_time: 5,
close_time: 23,
)

Restaurant.create(
name: "Rol San",
max_seats: 200,
location: "vancouver",
cuisine: "chinese",
open_time: 6,
close_time: 22,
)

User.create(
user_name: "erix",
email: "e@h.com",
phone: 1,
password: "123",
password_confirmation: "123",
)

User.create(
user_name: "luke",
email: "l@p.com",
phone: 2,
password: "123",
password_confirmation: "123",
)

User.create(
user_name: "jacob",
email: "j@p.com",
phone: 3,
password: "123",
password_confirmation: "123"
)

User.create(
user_name: "evan",
email: "e@s.com",
phone: 4,
password: "123",
password_confirmation: "123"
)
