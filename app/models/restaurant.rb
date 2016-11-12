class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  has_many :reviews
  belongs_to :owner, class_name: "User"
  has_many :pictures
end
