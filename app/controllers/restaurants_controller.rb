class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if restaurant.save
      redirect_to restaurants_url(@restaurant)
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if restaurant.save
      redirect_to restaurants_url(@restaurant)
    else
      render 'edit'
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :op_hours, :about, :capacity, :phone, :reser_hours)
  end


end
