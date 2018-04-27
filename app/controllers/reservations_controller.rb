class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new

    @reservation.time = params[:reservation]["time(4i)"]
    @reservation.date = params[:reservation][:date]
    @reservation.restaurant_id = params[:reservation][:restaurant_id]
    # @restaurant.customer_id = current_customer.id
    # @reservation.restaurant_id = Restaurant.find_by(id: params[:id])

    if @reservation.save
      redirect_to reservations_path
    else
      redirect_to restaurant_path
    end

  end

  def index

  end

  def destroy

  end

end
