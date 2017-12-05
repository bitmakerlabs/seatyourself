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
User.create!(name: "william", email: "will@will.com" , password_digest: "123456", password: "123456", password_confirmation: "123456")
User.create!(name: "sharon", email: "share@share.com" , password_digest: "123456", password: "123456", password_confirmation: "123456")

t = Time.new(2017, 10, 10, 17, 0,0, "+00:00")
t2 = t + 5.hours
Restaurant.create!(name: "Los Colibris", address:" 220 King St W", capacity: "20", open_time: t, close_time: t2, user_id:1, cuisine: "Mexican")
Restaurant.create!(name: "Pai", address:" 18 Duncan St", capacity: "20", open_time: t, close_time: t2, user_id:2, cuisine: "Thai")
Restaurant.create!(name: "The Keg", address:" 560 King St W", capacity: "20", open_time: t, close_time: t2, user_id:3, cuisine: "Steakhouse")
Restaurant.create!(name: "The Loose Moose", address:" 146 Front St W", capacity: "20", open_time: t, close_time: t2, user_id:4, cuisine: "Canadian")
Restaurant.create!(name: "Byblos", address: "11 Duncan St", capacity: "20", open_time: t, close_time: t2, user_id:1, cuisine:"Mediterranean")

Reservation.create!(user_id: 1, restaurant_id: 1, date_time: t, party_size: 5)
Reservation.create!(user_id: 2, restaurant_id: 2, date_time: t, party_size: 5)
Reservation.create!(user_id: 3, restaurant_id: 3, date_time: t, party_size: 5)
Reservation.create!(user_id: 4, restaurant_id: 4, date_time: t, party_size: 5)
