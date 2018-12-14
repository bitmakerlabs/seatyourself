# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Restaurant.delete_all
Reservation.delete_all
MenuItem.delete_all

u1 = User.create!(name:"Malcolm", email:"malcolm@email.com", loyalty_points:0)
rnt1 = Restaurant.create!(name:"chez MAlcolm", open_from: Time.now, open_until: Time.now, capacity: 100, max_reservation_size: 10, price_range: 5, summary:"blah blah blah", user_id: u1.id, address:"123 street road, Toronto, on, h6j5h5", neighbourhood:"yorkville", category:"chinese")
rez1 = Reservation.create!(user_id: u1.id, restaurant_id: rnt1.id, time:Time.now, party_size: 5)
menu1 = MenuItem.create!(restaurant_id: rnt1.id, dish: "gyoza", price:9)