class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.name = params[:restaurant][:name]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.close_time = params[:restaurant][:close_time]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.user_id = params[:restaurant][:user_id]

    if @entry.save
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
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.close_time = params[:restaurant][:close_time]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.user_id = params[:restaurant][:user_id]
  end

  def destroy
    @restaurant = Restaurant.new
    @restaurant.destroy
    redirect_to restaurants_path
  end
end
