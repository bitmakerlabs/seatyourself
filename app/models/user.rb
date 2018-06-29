class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }

  has_one :restaurant
  has_many :bookings
end
