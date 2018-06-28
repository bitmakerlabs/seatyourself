class RestaurantsController < ApplicationController
  def index
    @restaurants = if params[:term]
                    Restaurant.where('name LIKE ?', "%#{params[:term]}%")
                  else
                    Restaurant.all
                  end
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
    @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.time_slots = params[:restaurant][:time_slots]
    @restaurant.user_id = session[:user_id]


    if @restaurant.save
      redirect_to root_url
    else
      render :new
      flash[:alert] = "Something went wrong"
    end
  end

  def restaurant_params
    params.require(:restaurants).permit(:name, :address, :neighbourhood, :price_range, :summary, :menu, :time_slot, :user_id)
  end

end
