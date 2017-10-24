# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
restaurants = Restaurant.create{[
  { name: "Los Colibris",
    open_time: 5pm,
    close_time: 10pm,
    seats: 25,
    address: " 220 King St W, Toronto, ON M5H 1K4",
    user_id: 1,
  },
  { name: "Over Easy"
    open_time: 7am,
    close_time: 3pm,
    seats: 100,
    address: "56 Yonge St, Toronto, ON M5E 1G5",
    user_id: 1,
  },
  { name: "Smoke Signals Barbecue",
    open_time: 12pm,
    close_time: 11pm,
    seats: 100,
    address: "1242 Dundas St W, Toronto, ON M6J 1X5",
    user_id: 1,
  },
  { name: "Byblos",
    open_time: 4pm,
    close_time: 9pm,
    seats: 40,
    address: "11 Duncan St, Toronto, ON M5V 3M2",
    user_id: 1,
  },
  ]}


  users = [
    {name: "dave", password: "1234", password_confirmation: "1234", phone_number: 4165551234, email: "dave@gmail.com", user_type: "owner"},
    {name: "jessica", password: "1234", password_confirmation: "1234", phone_number: 4165551234, email: "jessica@gmail.com", user_type: "owner"},
    {name: "max", password: "1234", password_confirmation: "1234", phone_number: 4165551234, email: "max@gmail.com", user_type: "user"},
    {name: "sarah", password: "1234", password_confirmation: "1234", phone_number: 4165551234, email: "sarah@gmail.com", user_type: "user"},
  ]

  users.each do |user|
    User.create(user)
  end
