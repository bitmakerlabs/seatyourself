class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new

    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.close_time = params[:restaurant][:close_time]
    @restaurant.seats = params[:restaurant][:seats]
    @restaurant.user_id = current_user

    if @restaurant.save
      redirect_to root_url
    else
      render :new
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

    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.close_time = params[:restaurant][:close_time]
    @restaurant.seats = params[:restaurant][:seats]

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :update
    end
  end
end
