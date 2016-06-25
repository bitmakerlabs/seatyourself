class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validates :name, :time, :party_size, presence: true
  validate :party_size_is_over_zero

  def party_size_is_over_zero
    if party_size <= 0
      errors.add(:party_size, "Must be greater than 0")
    end
  end
# validate :is_over_capacity
#
# def is_over_capacity
#
# end
end
