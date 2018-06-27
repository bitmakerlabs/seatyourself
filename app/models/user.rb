class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :restaurants, through: :reservations

  validates :email, :password_digest, presence: true

end
