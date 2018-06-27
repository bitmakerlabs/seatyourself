class Restaurant < ApplicationRecord
  has_one_attached :main_picture
  has_many_attached :uploads

  has_many :reservations
  has_many :users, through: :reservations
end
