class RestaurantsController < ApplicationController


  def index
    @restaurants = Restaurant.all
  end

  def show
    load_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new

    @restaurant.name = params[:restaurant][:name]
    @restaurant.phone_number = params[:restaurant][:phone_number]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.main_picture = params[:restaurant][:main_picture]
    @restaurant.uploads = params[:restaurant][:uploads] || []

    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def edit
    load_restaurant
  end


  def update
    load_restaurant

    @restaurant.name = params[:restaurant][:name]
    @restaurant.phone_number = params[:restaurant][:phone_number]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.uploads = params[:restaurant][:uploads] || []


    if @restaurant.updates(params_capture)
        reirect_to restaurant_path(@restaurant)
    else
        render :edit
    end
  end


  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def load_restaurant
    @reservation = Restaurant.find(params[:id])
  end


end
