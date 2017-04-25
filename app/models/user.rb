class User < ApplicationRecord
   has_secure_password
   validates :email, :password, presence: true
   validates :email, :name, uniqueness: true
   validates :password, confirmation: true
   validates :password_confirmation, presence: true
   has_many :bookings
   has_many :restaurants, through: :bookings
end
