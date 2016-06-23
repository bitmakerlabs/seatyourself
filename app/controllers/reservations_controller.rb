class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to confirmation_url
    else
      render :new
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:datetime, :party_size)
  end
  
end
