class Booking < ApplicationRecord
  validates :guests, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 100 }
  has_and_belongs_to_many :restaurants
  belongs_to :user

end
