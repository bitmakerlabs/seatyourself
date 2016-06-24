class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

validates :name, :time, :party_size, presence: true
validate :is_over_capacity

def is_over_capacity

end

end
