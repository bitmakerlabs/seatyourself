class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations


  def method
    if reservation.date.party_size <= seats
      # confirm booking
    else
      flash[:notice] = "We're fully booked on that night"
    end

  end



end
