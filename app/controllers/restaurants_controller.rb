class RestaurantsController < ApplicationController
before_action :ensure_logged_in, except: [:index, :show]
before_action :load_restaurant, only: [:show, :edit, :update, :destroy]
before_action :ensure_user_owns_restaurant, only: [:edit, :update, :destroy]


  def load_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def ensure_user_owns_restaurant
    unless current_user == @restaurant.user
    flash[:alert] = "Please log in"
    redirect_to new_sessions_url
    end
  end

  def index
    @restaurants = Restaurant.all

  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.close_time = params[:restaurant][:close_time]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.user_id = params[:restaurant][:user_id]

    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end

  end

  def edit
  end

  def update
    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.close_time = params[:restaurant][:close_time]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.user_id = params[:restaurant][:user_id]

    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end

  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_url
  end

end
