class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :date, :time, presence: true
  validates :seats, numericality: {only_integer: true}

end
