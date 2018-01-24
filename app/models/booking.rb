class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validate :cannot_exceed_capacity

  def cannot_exceed_capacity
    people_in_current_time_slot = restaurant.bookings.where(day: day, time: time).sum(:n_people)
    if self.n_people > (restaurant.capacity - people_in_current_time_slot)
      errors.add(:n_people, "Not enough room for #{self.n_people} people at that time")
    end
  end
end
