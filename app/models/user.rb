class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :restaurants, through: :reservations
  has_many :owned_restaurants, class_name: "Restaurant"

  validates :first_name, :last_name, :email, :password_digest, presence: true

end
