class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:success] = "Restaurent Added!"
      redirect_to restaurants_path
    else
      flash[:alert] = "Sorry, restaurant was not added."
      render 'new'
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update_attributes(restaurant_params)
      flash[:success] = "You have succesfully edited your Restaurant info."
      redirect_to @restaurant
    else
      flash[:alert] = "There was a problem with editing your Restaurant info."
      redirect_to edit_restaurant_path
    end

  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    flash[:success] = "Restaurant deleted."
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:owner_id, :name, :address, :phone_number, :cuisine_id, :description, :opens_at, :closes_at, :seats, :image)
  end

end
