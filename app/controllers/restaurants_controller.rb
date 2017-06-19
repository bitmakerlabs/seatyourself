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
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      flash[:notice] = "Restaurant Saved!"
      redirect_to restaurants_path
    else
      flash.now[:error] = "Something went wrong, please try again!"
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      flash[:notice] = "Restaurant Updated!"
      redirect_to restaurant_path
    else
      flash.now[:error] = "Something went wrong, please try again!"
      redirect_back_or_to @restaurant
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.destroy
      flash[:alert] = "Restaurant Deleted!"
      redirect_to root_path
    else
    flash.now[:error] = "Something went wrong, please try again!"
    redirect_to '/restaurants'
    end
  end



  def restaurant_params
    params.required(:restaurant).permit(:name, :address, :phone_number, :email, :capacity, :time_open, :cuisine, :url, :summary, :time_slot, :price, :time_close)
  end

end
