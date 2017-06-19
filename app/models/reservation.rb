class Reservation < ApplicationRecord

  belongs_to :user
  belongs_to :restaurant

  validates :date, :party_number,  presence: true

  validate :time?
  def time?
    if self.time.present? && self.time >= self.restaurant.time_open && self.time <= self.restaurant.time_close
    else
      errors.add(:time, 'Please book between opening and closing times!')
    end
  end


end
