class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validate :cannot_exceed_capacity, :cannot_be_in_the_past

  def cannot_exceed_capacity
    people_in_current_time_slot = restaurant.bookings.where(day: day, time: time).sum(:n_people)
    if self.n_people > (restaurant.capacity - people_in_current_time_slot)
      errors.add(:custom_message, "Not enough room for #{self.n_people} people at that time")
    end
  end

  def cannot_be_in_the_past
    if self.day < Date.today
      errors.add(:custom_message, "Date cannot be in the past.")
    elsif self.day == Date.today && self.time <= Time.now.hour
        errors.add(:custom_message, "Date cannot be in the past.")
    end
  end

  def time_to_am_pm
    if self.time > 12
      return "#{time - 12}:00PM"
    else
      return "#{time}:00AM"
    end
  end
end
