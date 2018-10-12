class ReservationsController < ApplicationController

def create
  @reservation = Reservation.new
  @reservation.time = params[:reservation][:time]
  @reservation.date = params[:reservation][:date]
  @reservation.number_of_guests = params[:reservation][:number_of_guests]
  # @reservation.user_id = params[:user_id]
  @reservation.user = current_user
  # @restaurant = Restaurant.find(@reservation.restaurant_id)
  @restaurant = Restaurant.find(params[:restaurant_id])
  @reservation.restaurant_id = @restaurant.id







  # @restaurant_total_capacity = Restaurant.find(params[:restaurant_id]).capacity
  # @restaurant_open = (Restaurant.find(params[:restaurant_id]).opening_hours..Restaurant.find(params[:restaurant_id]).closing_hours).step(1.hour)
  # @total_guests = Restaurant.find(params[:restaurant_id]).reservations.where(time: @reservation.time).sum(:number_of_guests)



  if @reservation.save
    redirect_to restaurants_url
  else
    render "restaurants/show"
  end
end


def edit

end


def update

end




def delete

end



end
