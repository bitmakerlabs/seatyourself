class RestaurantsController < ApplicationController

  # before action that loads_restaurant
  # before action ensure_user_owns_restaurant
  #

  # define loads_restaurant

  # def ensure_user_owns_restaurant
  #   unless current_user == @restaurant.user
  #     flash[:alert] = "Please log in"
  #     redirect_to new_session_url
  #   end
  # end

  def index
    @restaurants = Restaurant.all
  end

  def show

    #replace line 23 with loads_restaurant
    @restaurant = Restaurant.find_by(id: params[:id])

    @reservation = Reservation.new

    #need restaurant instance variable in reservation controller, how to access?
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new

    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]

    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end
  end

end
