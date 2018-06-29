class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :partysize, :date, presence: true

  validate :date_not_in_past

  validate :not_open

  def date_not_in_past
    if date < Date.today
      errors.add(:date, "Date can't be in the past")
    end
  end

  # Trying to validate that reservation is when restaurant is open
  # def not_open
  #   if time < open_at || time > close_at
  #     errors.add(:date, "Restaurant not open at that time")
  #   end
  # end
end
