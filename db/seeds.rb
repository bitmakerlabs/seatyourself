# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([
                    { name: 'Behram', email:'behram@gmail.com', phone: 4161114444, role: 'user', password:'password', password_confirmation: 'password' },
                    { name: 'Sean', email:'sean@gmail.com', phone: 4163334444, role: 'user', password:'password', password_confirmation: 'password' },
                    { name: 'Hasan', email:'hasan@gmail.com', phone: 4162224444, role: 'owner', password:'password', password_confirmation: 'password' },
                    { name: 'Karen', email:'karen@gmail.com', phone: 4165554444, role: 'user', password:'password', password_confirmation: 'password' }
                    ])

# restaurants = User.create([
#                     { address: 'Behram', email:'behram@gmail.com', phone: 4161114444, role: 'user', password:'password', password_confirmation: 'password' },
#                     { name: 'Sean', email:'sean@gmail.com', phone: 4163334444, role: 'user', password:'password', password_confirmation: 'password' },
#                     { name: 'Hassan', email:'hassan@gmail.com', phone: 4162224444, role: 'owner', password:'password', password_confirmation: 'password' },
#                     { name: 'Karen', email:'karen@gmail.com', phone: 4165554444, role: 'user', password:'password', password_confirmation: 'password' }
                    
