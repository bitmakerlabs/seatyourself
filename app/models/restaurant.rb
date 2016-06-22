class Restaurant < ActiveRecord::Base
	# has_many :reservations,
	# has_many :users through :reservations
	
	validates :name, :description, :address, presence: true
	validates :seats, :open, :close, numericality: {only_integer: true}
end
