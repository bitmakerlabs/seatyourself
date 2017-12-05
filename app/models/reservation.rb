class Reservation < ApplicationRecord
	belongs_to :user
	belongs_to :restaurant

	validates :user_id, :restaurant_id, :date_time, :party_size, presence: :true
	validates :party_size, numericality: {only_integer: true}

  def availability
    capacity = Restaurant.find(self.restaurant_id).capacity
    reservations = Reservation.where( restaurant_id: restaurant_id)
    reservations.each do |reservation|
      dt = reservation.date_time
      if dt.day == date_time.day && dt.month == date_time.month && dt.year == date_time.year
        if dt.hour >= date_time.hour - 1.hour && dt.hour <= date_time.hour + 1.hour
          capacity -= reservation.party_size
        end
      end
    end
        if capacity >= party_size
          return true

        else
          return false
    end
  end
end
