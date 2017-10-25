class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :restaurants
  has_many :restaurants, through: :reservations

  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
