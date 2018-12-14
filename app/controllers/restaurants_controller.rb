class RestaurantsController < ApplicationController
  #before_action :require_login, except: [:index]

  #def require_login
    #unless session [:user_id]
    #flash [:alert] = "Log in to your fucking account, dickhead."
    #redirect_to new_session_path
  # => end
  #end

    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find(params[:id])
        # @menu_items = @restaurant.menu_items
        # @menu_item = MenuItem.new
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new
        @restaurant.name = params[:restaurant][:name]
        @restaurant.open_from = params[:restaurant][:open_from]
        @restaurant.open_until = params[:restaurant][:open_until]
        @restaurant.capacity = params[:restaurant][:capacity]
        @restaurant.max_reservation_size = params[:restaurant][:max_reservation_size]
        @restaurant.price_range = params[:restaurant][:price_range]
        @restaurant.summary = params[:restaurant][:summary]
        @restaurant.user_id = params[:restaurant][:user_id]
        @restaurant.address = params[:restaurant][:address]
        @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
        @restaurant.category = params[:restaurant][:category]

        if @restaurant.save
            redirect_to restaurants_path
        else
            render :new
        end
    end

    def edit
        @restaurant = Restaurant.find(params[:id])
    end

    def update
        @restaurant =  Restaurant.find(params[:id])
        @restaurant.name = params[:restaurant][:name]
        @restaurant.open_from = params[:restaurant][:open_from]
        @restaurant.open_until = params[:restaurant][:open_until]
        @restaurant.capacity = params[:restaurant][:capacity]
        @restaurant.max_reservation_size = params[:restaurant][:max_reservation_size]
        @restaurant.price_range = params[:restaurant][:price_range]
        @restaurant.summary = params[:restaurant][:summary]
        @restaurant.user_id = params[:restaurant][:user_id]
        @restaurant.address = params[:restaurant][:address]
        @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
        @restaurant.category = params[:restaurant][:category]
        if @restaurant.save
            redirect_to restaurant_path
        else
            render :edit
        end
    end

    def destroy
        @restaurant = Product.find([:params])
        @restaurant.destroy

        redirect_to user_path
    end

end
