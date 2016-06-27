class Reservation < ActiveRecord::Base
belongs_to :diner
belongs_to :restaurant
validates :time, :party_size, :diner_id, :restaurant_id, :date, :instructions, presence: true
validates :instructions, length: {maximum: 200}
validates :instructions, length: {minimum: 5} 
end
