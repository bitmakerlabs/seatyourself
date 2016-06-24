class Restaurant < ActiveRecord::Base
  belongs_to :diner
  has_many :reservations
  has_many :diners thorough: :reservations
end
