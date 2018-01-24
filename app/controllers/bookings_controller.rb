class BookingsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = @restaurant.bookings.new
    @booking.time = params[:booking][:time] + params[:hour].hour
    @booking.n_people = params[:booking][:time]
    @booking.user = current_user

    if @booking.save
      flash[:notice] = "Reservation made at #{@restaurant.name} on #{@booking.time.month}/#{@booking.time.day} at #{@booking.time.hour}"
      redirect_to root_path
    end
  end

end
