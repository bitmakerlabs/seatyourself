class Restaurant < ApplicationRecord
  validates :description, :name, :menu, :address, presence: true
  validates :guests, numericality: { is: 100 }
  has_many :bookings

  @@available_times = {"11AM" => 100, "12PM" => 100, "1PM" => 100, "2PM" => 100, "3PM" => 100, "4PM" => 100, "5PM" => 100, "6PM" => 100, "7PM" => 100, "8PM" => 100 }

  def opening #sets the opening hour for the restaurant (24hrs, so 11AM = 11)
    11
  end

  def closing
    20
  end
end
