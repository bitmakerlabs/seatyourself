class BookingsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = @restaurant.bookings.new
  end

end
