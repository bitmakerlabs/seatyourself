class Reservation < ApplicationRecord
	belongs_to :user
	belongs_to :restaurant

	validates :user_id, :restaurant_id, :date_time, :party_size, presence: :true
	validates :party_size, numericality: {only_integer: true}
end
# "user_id"
#     t.integer  "restaurant_id"
#     t.datetime "date_time"
#     t.integer  "party_size"