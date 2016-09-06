class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render 'new'
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update_attributes(restaurant_params)
      redirect_to @restaurant
    else
      redirect_to edit_restaurant_path
    end

  end

  def index
    if params[:search_address]
      @restaurants = Restaurant.near(params[:search_address])
    elsif params[:latitude] && params[:longitude]
      @restaurants = Resturant.near([params[:latitude], params[:longitude]])
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @nearby_restaurants = @restaurant.nearbys
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:owner_id, :name, :address, :phone_number, :cuisine_id, :description, :opens_at, :closes_at, :seats, :image)
  end

end
