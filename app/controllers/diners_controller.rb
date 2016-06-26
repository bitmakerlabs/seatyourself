class DinersController < ApplicationController

  def index
    @diner = Diner.new
  end

  def new
    @diner = Diner.new
  end

  def show
    @diner = Diner.find(params[:id])
    @owned_restaurants = current_diner.owned_restaurants #shows the restaurants the Diner owns
  end

  def edit
    @diner = Diner.find(params[:id])
  end

  def update
    @diner = Diner.find(params[:id])

    if @diner.update_attributes(diner_params)
      redirect_to diner_url(@diner)
    else
      render :edit
    end
  end

  def create
    @diner = Diner.new(diner_params)
    if @diner.save
      session[:diner_id] = @diner.id  #log in diner once signed up
      redirect_to root_path, notice: 'Thanks for signing up!'
    else
      render 'new'
    end
  end

private

def diner_params
  params.require(:diner).permit(:name, :email, :phone_number, :password, :password_confirmation)
end



end
