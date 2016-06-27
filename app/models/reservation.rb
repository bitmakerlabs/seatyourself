class Reservation < ActiveRecord::Base
belongs_to :diner
belongs_to :restaurant
validates :party_size, :diner_id, :restaurant_id, :date, :instructions, presence: true
validates :instructions, length: {maximum: 200}
end
