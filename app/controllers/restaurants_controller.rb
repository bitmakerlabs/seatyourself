class RestaurantsController < ApplicationController

  before_action :ensure_restaurant_owner, only: [:edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @bookings = @restaurant.bookings
    @booking = Booking.new
    @booking_times_array = booking_times_array(@restaurant)
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
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.user_id = @user.id
    if @restaurant.save
      redirect_to restaurants_url
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    @user = current_user
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.name = params[restaurant][:name]
    @restaurant.description = params[:restaurant][:description]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.close_time = params[:restaurant][:closed_time]
    @restaurant.price = params[:restaurant][:price]
    @restaurant.capacity = params[:restaurant][:capacity]

    if @restaurant.save
      flash[:notice] = "Changes have been saved"
      redirect_to restaurant_url
    else
      render :edit
    end
  end

  def destroy

  end

  def ensure_restaurant_owner
    @restaurant = Restaurant.find(params[:id])
    if session[:user_id] != @restaurant.user_id
      flash[:alert] = ["This is not your restaurant"]
      redirect_to root_path
    end
  end

  def booking_times_array(restaurant)
    times_array = []
    (restaurant.open_time.localtime.hour..
      restaurant.close_time.localtime.hour).each do |hour|
        times_array << time_to_am_pm(hour)
      end
      times_array.pop
    return times_array
  end

end
