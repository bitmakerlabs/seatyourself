class Restaurant < ActiveRecord::Base

  belongs_to :diners
  has_many :reservations
  has_many :diners, through: :reservations
  validates :name, :about, :capacity, :phone, :diner_id, :start_time, :end_time, :street, :city, :postal, :cuisine, presence: true
  
private
  def check_seats(time)

  end
end
