class Restaurant < ApplicationRecord
  validates :description, :name, :menu, :address, presence: true
  validates :guests, numericality: { is: 100 }
  has_many :bookings
  has_many :users, through: :bookings


  def available_times(times = {})
    times = {"11AM" => "11AM", "12PM" => "12PM", "1PM" => "1PM", "2PM" => "2PM", "3PM" => "3PM", "4PM" => "4PM", "5PM" => "5PM", "6PM" => "6PM", "7PM" => "7PM", "8PM" => "8PM"}
  end

  def opening #sets the opening hour for the restaurant (24hrs, so 11AM = 11)
    11
  end

  def closing
    20
  end
end
