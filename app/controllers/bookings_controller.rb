class BookingsController < ApplicationController
  before_action :ensure_logged_in, only: :create

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = @restaurant.bookings.new(booking_params)
    @booking.user = current_user

    if @booking.save
      flash[:notice] = ["Reservation made at #{@restaurant.name} on #{@booking.day.month}/#{@booking.day.day} at #{@booking.time}"]
      redirect_to restaurant_path(@restaurant)
    end
  end

  def booking_params
    params.require(:booking).permit(:day, :n_people, :time)
  end

  private

  def ensure_logged_in
    unless session[:user_id]
      flash[:alert] = ["You must be logged in to create a reservation"]
      redirect_to restaurant_path(params[:restaurant_id])
    end
  end

end
