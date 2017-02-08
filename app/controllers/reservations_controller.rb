class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = @user.reservations.build(reservation_params)
  end

  def destroy
  end
  blablablabla
end
