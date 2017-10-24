class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  # As a customer, if I try to make a reservation at a time when a restaurant is already
  # at max capacity, the reservation will not be made and I will be shown a message indicating why.

  def self.book_seats
  # when reservation is made, seats -= party_size
    

  end

  def max_capacity

  end
end
