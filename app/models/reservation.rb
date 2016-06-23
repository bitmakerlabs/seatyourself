class Reservation < ActiveRecord::Base
belongs_to :diner
belongs_to :restaurant


end
