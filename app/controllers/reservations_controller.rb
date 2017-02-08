class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(1)
  end

  def create
    @restaurant = Restaurant.find(1)
    @reservation = @user.reservations.build(reservation_params)
  end

  def destroy
    @reservation = Reservation.find(id[:params])
    @reservation.destroy
  end
end
