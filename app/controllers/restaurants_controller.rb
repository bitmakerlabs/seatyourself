class RestaurantsController < ApplicationController
  before_action :require_login, except: [:index]
  def index
    @restaurants = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.diner_id = current_diner.id
    if @restaurant.save
      redirect_to restaurants_url(@restaurant)
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    if @diner && @diner.restaurant_id == @restaurant.id #if the diner owns the restaurant
      @reservations = Restaurant.find(@restaurant.id).reservations  #find the reservations for this restaurant
    end

  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.diner_id = current_diner.id
    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_path(@restaurant.id), alert: "Updated!" #goes to restaurant's page to show the updates
    else
      render 'edit'
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :about, :capacity, :phone, :diner_id, :start_time, :end_time, :street, :city, :postal, :cuisine)
  end


end
