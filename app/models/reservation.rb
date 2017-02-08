class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  validates :time, :date, :party_size, presence: true


end
