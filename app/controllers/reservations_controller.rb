class ReservationsController < ApplicationController

  def new
   @reso = Reservation.new
   @restaurant = Restaurant.find(params[:restaurant_id])
 end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reso = Reservation.new

    @reso.date = params[:reservation][:date]
    @reso.time = params[:reservation][:time]
    @reso.partysize = params[:reservation][:partysize]
    @reso.user_id = session[:user_id]
    @reso.restaurant_id = @restaurant.id

    if @reso.save
      flash[:notice] = "Reservation successfully made."
      redirect_to restaurant_url(@restaurant)
    else
      render :new
    end
  end

end
