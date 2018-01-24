class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @bookings = @restaurant.bookings
    @booking = Booking.new
  end

  def new
    @restaurant = Restaurant.new
    @user = current_user
  end

  def create
    @user = User.find(params[:user_id])
    @restaurant = Restaurant.new
    @restaurant.name = params[:restaurant][:name]
    @restaurant.description = params[:restaurant][:description]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.close_time = params[:restaurant][:close_time]
    @restaurant.price = params[:restaurant][:price]
    @restaurant.capcity = params[:restaurant][:capacity]
    @restaurant.user_id = @user.id
    if @restaurant.save
      redirect_to restaurants_url
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
