class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

def check_capacity

  @restaurant_total_capacity = self.restaurant.capacity
  @total_guests = restaurant.reservations.where(time: self.time).sum(:number_of_guests)

    if (@total_guests + self.number_of_guests) > @restaurant_total_capacity
      self.errors.add(:number_of_guests, "Unable to save")
    end
end

validate :check_capacity

end
