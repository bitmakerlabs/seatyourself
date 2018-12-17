class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validate :reservation_date_cannot_be_in_the_past

  def reservation_date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end 

  Date::DAYNAMES[reservation.date.wday] ==
  validate :reservation_date_cant_be_outside_open_hours
  def reservation_date_cant_be_outside_open_hours

  end 

  # validate :reservation_time_cant_be_outside_open_hours
  # def reservation_time_cant_be_outside_open_hours
  # end 

  # validate :reservation_size_cant_be_larger_than_restaurant_max_reservatin_size
  # def reservation_time_cant_be_outside_open_hours
  # end 

  validates :time, presence: true
  validates :party_size, presence: true
  validates :party_size, presence: true
  validates :party_size, numericality: true
  # validates :party_size, :less_than_or_equal_to: max_reservation_size
  # validates :party_size,  :less_than_or_equal_to: capacity
end
