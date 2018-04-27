class ReservationsController < ApplicationController

  # makes new reservation for user
  def create
    @reservation = Reservation.new

    @reservation.time = params[:reservation]["time(4i)"]
    @reservation.date = params[:reservation][:date]
    @reservation.save
  end

  # goes to 'My Reservations' page that lists user's reservations
  def index

  end

  # deletes reservation
  def destroy

  end

end
