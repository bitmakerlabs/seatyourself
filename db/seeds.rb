# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Restaurant.destroy_all
Reservation.destroy_all
User.create!(name: "brandon", email: "brandon@brandon.com" , password_digest: "123456", password: "123456", password_confirmation: "123456")
User.create!(name: "eric", email: "eric@eric.com" , password_digest: "123456", password: "123456", password_confirmation: "123456")

t = Time.now
t2 = t + 5.hours
Restaurant.create!(name: "subway", address:" 123 king st", capacity: "20", open_time: t, close_time: t2, user_id:1)

Reservation.create!(user_id: 1, restaurant_id: 1, date_time: t, party_size: 5)

