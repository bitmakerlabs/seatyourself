class Reservation < ActiveRecord::Base
  validates :restaurant_id, :user_id, presence: true
  belongs_to :user
  belongs_to :restaurant
end
