class CuisinesController < ApplicationController
  after_filter "save_my_previous_url", only: [:new]

  def new
    @back_url = session[:my_previous_url]
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    @cuisine.name.capitalize!
    if @cuisine.save
      redirect_to new_restaurant_path
    else
      render 'new'
    end
  end

  def delete
  end

  private

  def cuisine_params
    params.require(:cuisine).permit(:name)
  end

  def save_my_previous_url
    session[:my_previous_url] = URI(request.referer || '').path
  end

end
