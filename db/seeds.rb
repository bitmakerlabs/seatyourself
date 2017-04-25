# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.create(
# name: "Batman",
# email: "batman_69@aol.com",
# password: "abcde123"
# )

# Restaurant.create(
# name: "Paco's Tacos",
# description: "Damn fine tacos",
# address: "1624 Belcher street",
# menu: "#",
# guests: 25,
# image: "http://c7.nrostatic.com/sites/default/files/uploaded/college-bans-mexican-sombreros-r.jpg"
# )

#
# Restaurant.create(
# name: "Burger Slut",
# description: "What would YOU do for a cheeseburger?",
# address: "42 Mountaindew Avenue",
# menu: "#",
# guests: 50,
# image: "http://www.imagesource.com/Doc/IS0/Media/TR3_WATERMARKED/c/6/e/4/IS098QZ5O.jpg"
# )
Restaurant.create(
name: "Can Haz Cheezburger",
description: "You can haz one",
address: "internet",
menu: "#",
guests: 15,
image: "http://i1.kym-cdn.com/photos/images/facebook/000/100/128/happycat.gif"
)


Restaurant.create(
name: "Sobchak's Deli",
description: "SHUT THE FUCK UP AND EAT",
address: "Vietnam",
menu: "#",
guests: 15,
image: "http://images.complex.com/complex/image/upload/c_limit,w_680/fl_lossy,pg_1,q_auto/abnzfvtijnyt5phirswv.jpg"
)

Restaurant.create(
name: "Donnie T's Family Funtime Fantasy Feistaurant",
description: "Family-style mexican restaurant and arcade. Come for the animatronics, stay because we took your passport.",
address: "555 Tinkledown Boulevard",
menu: "Literally cheetos in a torilla shell.",
guests: 45,
image: "https://pouringmyartout.files.wordpress.com/2015/07/a-1-a-15.jpg"
)

Restaurant.create(
name: "Ivan's Bar and Grill",
description: "pleas to be eat and drinking. restaurant of ivan having top quaility refreshment imported from back room and aged in finest bathtub. good time had is to be ivan guarantee!",
address: "1434 Jensen Cresent",
menu: "#",
guests: 15,
image: "https://media-cdn.tripadvisor.com/media/photo-o/0c/30/db/41/green-gables-bungalow.jpg"
)

User.create(
user_id: 1,
name: "Butt Sadman",
email: "Butt@sad.biz",
password: "12345",
password_confirmation: "12345",
id: 1
)

User.create(
user_id: 2,
name: "Jesus Christ",
email: "godsson@immaculateconception.gov",
password: "12345",
password_confirmation: "12345",
id: 2
)
