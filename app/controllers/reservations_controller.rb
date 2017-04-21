class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(1)
  end

  def create
    @restaurant = Restaurant.find(1)
    @reservation = Reservation.new(reservation_params)
    if @restaurant.reservations.where(time: reservation_params[:time], date: reservation_params[:date]).sum(:party_size) + reservation_params[:party_size] >= @restaurant.capacity
      puts "Hi!"
      byebug
    end
  end

  def destroy
    @reservation = Reservation.find(id[:params])
    @reservation.destroy
  end

  def reservation_params
    params.require(:reservation).permit(:party_size, :time, :date)
  end
end
