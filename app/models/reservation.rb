class Reservation < ApplicationRecord
  validates :time, :date, :number_of_tables, presence: true
  belongs_to :user
  belongs_to :restaurant
end
