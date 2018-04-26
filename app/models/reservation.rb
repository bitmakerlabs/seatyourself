class Reservation < ApplicationRecord

  belongs_to :reservation
  belongs_to :restaurant
end
