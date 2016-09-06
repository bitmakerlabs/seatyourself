class User < ActiveRecord::Base
  has_secure_password
  has_many :reservations
  has_many :restaurants, through: :reservations
  validates :first_name, :last_name, :email, :password, :password_confirmation, presence: true
  validates :password, length: { minimum:8 }
end
