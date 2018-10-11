class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservations = Reservation.where(restaurant_id: @restaurant_id)
    @reservations = @restaurant.reservations
    @reservation = Reservation.new
  end




end
