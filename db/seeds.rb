# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



users = User.create([
                    { name: 'Behram', email:'behram@gmail.com', phone: 4161114444, password:'password', password_confirmation: 'password' },
                    { name: 'Sean', email:'sean@gmail.com', phone: 4163334444, password:'password', password_confirmation: 'password' },
                    { name: 'Hasan', email:'hasan@gmail.com', phone: 4162224444, password:'password', password_confirmation: 'password' },
                    { name: 'Karen', email:'karen@gmail.com', phone: 4165554444, password:'password', password_confirmation: 'password' },
                    { name: 'John', email:'john@gmail.com', phone: 4161234444, password:'password', password_confirmation: 'password' }
                    ])

restaurants = Restaurant.create([
                    { picture: 'http://www.papajohns.ca/images/content/our-story-1992.png', name: 'Papa Seans', address:'123 Street, Toronto', neighbourhood: 'China Town', price_range: 2, summary:'Come to papa seans, the best  place in town for your pizza', menu: 'https://b.zmtcdn.com/data/menus/327/16633327/bbd69482f3cabf965a591cc184086e38.jpg', user_id: 2 },
                    { picture: 'https://cdn.vox-cdn.com/uploads/chorus_image/image/53997173/Biryani.Front.0.0.jpg', name: 'Behrams Biryani', address:'555 Gucci Avenue, Mississauga', neighbourhood: 'Dundas', price_range: 5, summary:'Get the best rice you can eat in the heart of Mississauga', menu: 'https://b.zmtcdn.com/data/menus/047/17852047/c9860c608d5da5e66b2948881691af9e.jpg', user_id: 1 }
                    ])

reservations = Reservation.create([{ time: 9, date: Date.new(2018,9,2), user_id:4, restaurant_id:1, number_of_tables:1},
                                   { time: 12, date: Date.new(2018,4,25) , user_id:3, restaurant_id:2, number_of_tables:2}])
