class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	validates :number_of_people, :hour, presence: true, numericality: {only_integer: true}
end
