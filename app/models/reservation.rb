class Reservation < ApplicationRecord
  validates :party_size, presence: true

  belongs_to :user
  belongs_to :restaurant
end
