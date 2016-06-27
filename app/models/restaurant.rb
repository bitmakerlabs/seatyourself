class Restaurant < ActiveRecord::Base

  belongs_to :diners
  has_many :reservations
  has_many :diners, through: :reservations

private
  def check_seats(time)
  
  end
end
