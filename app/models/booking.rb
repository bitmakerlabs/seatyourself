class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  def time_to_am_pm
    if self.time > 12
      return "#{time - 12}:00PM"
    else
      return "#{time}:00AM"
    end
  end
end
