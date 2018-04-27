class ReservationsController < ApplicationController

  before_action :ensure_logged_in


  # makes new reservation for user
  def create
    @reservation = Reservation.new

    @reservation.time = params[:reservation]["time(4i)"]
    @reservation.date = params[:reservation][:date]
    @reservation.restaurant_id = params[:reservation][:restaurant_id]
    @reservation.number_of_tables = params[:reservation][:number_of_tables]
    # @restaurant.customer_id = current_customer.id
    # @reservation.restaurant_id = Restaurant.find_by(id: params[:id])

    if @reservation.save
      redirect_to reservations_path
    else
      redirect_to restaurant_path
    end

  end

  # goes to 'My Reservations' page that lists user's reservations
  def index

  end

  # deletes reservation
  def destroy

  end

end
