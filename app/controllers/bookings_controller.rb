class BookingsController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @bookings = @user.bookings
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = @restaurant.bookings.new(booking_params)
    @booking.user = current_user

    if @booking.save
      flash[:notice] = ["Reservation made at #{@restaurant.name} on #{@booking.day.month}/#{@booking.day.day} at #{@booking.time}"]
      redirect_to root_path
    end
  end

  def booking_params
    params.require(:booking).permit(:day, :n_people, :time)
  end

end
