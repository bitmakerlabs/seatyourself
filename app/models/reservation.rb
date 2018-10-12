class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :date, presence: true
  validates :time, presence: true
  validates :number_of_guests, presence: true

def check_capacity

  restaurant_total_capacity = self.restaurant.capacity
  total_guests = restaurant.reservations.where(time: self.time, date: self.date).sum(:number_of_guests)

    if self.number_of_guests == nil
      return
    end
    if (total_guests + self.number_of_guests) > restaurant_total_capacity
      self.errors.add(:number_of_guests, "is unable to save, please make sure the number of guests is between the minimum and maximum party size.")
    end

end

def working_hours
  opening_hours = self.restaurant.opening_hours
  closing_hours = self.restaurant.closing_hours

    if (self.time <= opening_hours) || (self.time >= closing_hours)
      self.errors.add(:time, "is unable to save, please make sure your reservation is between opening and closing hours.")
  end

end

def booking
  if self.date < DateTime.now
      self.errors.add(:time, "is unable to save, please book a valid date.")
  end
end

def party_size
  min_party_size = self.restaurant.min_party_size
  max_party_size = self.restaurant.max_party_size

    if self.number_of_guests == nil
      return
    end
    if self.number_of_guests < min_party_size || self.number_of_guests > max_party_size
      self.errors.add(:time, "Unable to save")
    end

end
validate :check_capacity
validate :working_hours
validate :booking
validate :party_size

end
