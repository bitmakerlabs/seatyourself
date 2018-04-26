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
  end
end
