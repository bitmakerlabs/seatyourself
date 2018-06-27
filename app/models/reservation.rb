class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :partysize, :date, presence: true

  validate :date_not_in_past

  def date_not_in_past
    if date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end
end
