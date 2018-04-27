class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new

    @reservation.time = params[:reservation]["time(4i)"]
    @reservation.date = params[:reservation][:date]
    @reservation.save 
  end

  def index

  end

  def destroy

  end

end
