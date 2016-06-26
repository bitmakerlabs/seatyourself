class Restaurant < ActiveRecord::Base
  has_many :diners, through: :reservations


end
