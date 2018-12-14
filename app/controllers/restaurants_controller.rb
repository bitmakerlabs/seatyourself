class RestaurantsController < ApplicationController

    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find_by(params[:id])
        @menu_items = @restaurant.menu_items
        @menu_item = MenuItem.new
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
        @restaurant = Restaurant.new
    end

    def update
        @restaurant = Restaurant.new
        @restaurant = params[:name]
        @restaurant = params[:open_from]
        @restaurant = params[:open_until]
        @restaurant = params[:capacity]
        @restaurant = params[:max_reservation_size]
        @restaurant = params[:price_range]
        @restaurant = params[:summary]
        @restaurant = params[:user_id]
        @restaurant = params[:address]
        @restaurant = params[:neighbourhood]
        @restaurant = params[:category]

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
