class Booking < ApplicationRecord
  validates :guests, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 100 }
  belongs_to :restaurant
  belongs_to :user

end
