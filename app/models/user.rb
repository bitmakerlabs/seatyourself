class User < ApplicationRecord
  has_secure_password

  # comes with some basic validations

  # validate minimum length
  # validations

  has_many :reservations
  has_many :restaurants, through: :reservations
  has_many :restaurants

end
