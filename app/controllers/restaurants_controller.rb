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
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.user_id = @user.id
    if @restaurant.save
      redirect_to restaurants_url
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
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

end
