class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_url(@restaurant) #goes to the restaurant's page
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

    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_path(@restaurant.id), alert: "Updated!" #goes to restaurant's page to show the updates
    else
      render 'edit'
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit!
  end


end
