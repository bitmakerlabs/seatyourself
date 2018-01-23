class User < ApplicationRecord
  has_secure_password

  has_one :restaurant
  has_many :bookings
end
