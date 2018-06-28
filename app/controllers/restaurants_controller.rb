class RestaurantsController < ApplicationController
  before_action :ensure_logged_in, except: [:show, :index]
  before_action :ensure_user_owns_restaurant, only: [:edit, :destroy, :update]


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
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
    @restaurant.phone_number = params[:restaurant][:phone_number]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.main_picture = params[:restaurant][:main_picture]
    @restaurant.uploads = params[:restaurant][:uploads] || []
    @restaurant.user_id = current_user.id

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
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
    @restaurant.phone_number = params[:restaurant][:phone_number]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.address = params[:restaurant][:address]


    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end


  def destroy
    load_restaurant

    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def load_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def ensure_user_owns_restaurant
    load_restaurant
    if @restaurant.user_id != current_user.id
      flash[:alert] = "Sorry you do not have access to the restaurant."
      redirect_to restaurant_path(@restaurant.id)
    end
  end

  def picture(restaurant)
    if restaurant.main_picture.present?
      image_tag restaurant.main_picture
    end
  end

end
