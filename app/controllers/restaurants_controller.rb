class RestaurantsController < ApplicationController


  def index
    @restaurants = Restaurant.all
  end

  def show
    @reservation = Restaurant.find(params[:id])
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
        redirect_to restaurants_url
      else
        render :new
      end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end


  def update
    @restaurant = Restaurant.find(params[:id])

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



end
