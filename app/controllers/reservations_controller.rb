class ReservationsController < ApplicationController

  def new
   @reservation = Reservation.new
   @restaurant = Restaurant.find(params[:restaurant_id])
 end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new

    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.user_id = session[:user_id]
    @reservation.restaurant_id = @restaurant.id

    if @reservation.save
      redirect_to root_url
    else
      render :new
    end
  end

end
