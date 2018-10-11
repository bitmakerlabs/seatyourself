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
    @restaurant.address = params[:restaurant][:address]
    @restaurant.city = params[:restaurant][:city]
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.opening_hours = params[:restaurant][:opening_hours]
    @restaurant.closing_hours = params[:restaurant][:closing_hours]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.user = current_user
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
    @restaurant.address = params[:restaurant][:address]
    @restaurant.city = params[:restaurant][:city]
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.opening_hours = params[:restaurant][:opening_hours]
    @restaurant.closing_hours = params[:restaurant][:closing_hours]
    @restaurant.capacity = params[:restaurant][:capacity]
    if @restaurant.save
      redirect_to restaurant_url
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_url
  end


end
