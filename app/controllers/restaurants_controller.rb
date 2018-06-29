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
    @restaurant.picture = params[:restaurant][:picture]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.open_at = params[:restaurant][:open_at]
    @restaurant.close_at = params[:restaurant][:close_at]
    @restaurant.user_id = session[:user_id]

    @user = User.find(current_user)
    @user.owner = true


    if @restaurant.save && @user.save
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
