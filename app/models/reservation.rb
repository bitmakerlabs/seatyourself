class Reservation < ActiveRecord::Base
belongs_to :diner
belongs_to :restaurant
validates :party_size, :diner_id, :restaurant_id, :date, presence: true
validates :instructions, length: {maximum: 200}
validate :check_avail


def size
  @restaurant.capacity - @reservation.party_size = seats
  return seats
end

def seats_left
  Reservation.where({date: date, restaurant_id: restaurant_id}).sum(:party_size)
end

def check_avail
  if ((self.seats_left + self.party_size) > (self.restaurant.capacity))
    errors.add(:party_size, "Not enough seats available")
  end
end

def open_hours
  if
  Time.parse(self.date) < @reservation.start_time || Time.parse(self.date) > @reservation.start_time
  errors.add(:date, "The time requested is not available")
  end
end
end
