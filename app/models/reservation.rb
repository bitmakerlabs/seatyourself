class Reservation < ActiveRecord::Base
validates :name, :time, :party_size, presence: true
end
