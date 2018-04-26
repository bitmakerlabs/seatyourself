class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new

    @reservation.time = params[:reservation][:time]
    @reservation.date = params[:reservation][:date]
  end

  def index

  end

  def destroy

  end

end
