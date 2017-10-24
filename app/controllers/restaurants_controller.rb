class RestaurantsController < ApplicationController
before_action :new_restaurant, only:[:new, :create]
before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    #find_restaurant
  end

  def new
    #new_restaurant
  end

  def create
    #new_restaurant
    #find_restaurant
  end

  def edit
    #find_restaurant
  end

  def update
    #find_restaurant
  end

  def destroy
    #find_restaurant
  end

  private

  def new_restaurant
    @restaurant = Restaurant.new
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
