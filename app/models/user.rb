class User < ApplicationRecord
  has_one :restaurant
  has_many :bookings
end
