# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@client = GooglePlaces::Client.new('AIzaSyBsGdpGRHBjmqtAuOox1lJSGWjMSIGWihQ')
cache = @client.spots(43.6514991, -79.3834668, :types => 'restaurant')

cache.each do |item|
  x = @client.spot(item.place_id)
  Restaurant.create!(name: x.name, address: x.formatted_address, phone: x.formatted_phone_number, picture: x.photos[0].fetch_url(800), neighbourhood: x.city, price_range: x.price_level, summary: "test", menu: "test", time_slots: [x.opening_hours])
end

# Commented out because its throwing an error:
# "BCrypt::Errors::InvalidHash in SessionsController#create"
# "invalid hash"

# User.create!(email: 'test1@gmail.com', password_digest: '1234')
# User.create!(email: 'test2@gmail.com', password_digest: '1234')
# User.create!(email: 'test3@gmail.com', password_digest: '1234')
# User.create!(email: 'test4@gmail.com', password_digest: '1234')
