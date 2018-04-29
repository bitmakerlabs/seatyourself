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

  before_action :ensure_logged_in, except: [:show, :index]
  before_action :load_restaurant, only: [:show]


  # shows the home page
  def index
    @restaurants = Restaurant.all
  end

  # shows indiviual page
  def show

    #replace line 23 with loads_restaurant
    load_restaurant

    @reservation = Reservation.new

    #need restaurant instance variable in reservation controller, how to access?
  end

  # shows a page with a form
  def new
    @restaurant = Restaurant.new
  end

  # submits form information and creates a new restaurant
  def create
    @restaurant = Restaurant.new

    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]

    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end
  end

  def load_restaurant
    @restaurant = Restaurant.find_by(id: params[:id])
  end

end
