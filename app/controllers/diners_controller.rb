class DinersController < ApplicationController

  def index
    
  end

  def new
    @diner = Diner.new
  end

  def show
    @diner = Diner.find(params[:id])
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
      redirect_to root_url, notice: 'Thanks for signing up!'
    else
      render 'new'
    end
  end

private

def diner_params
  params.require(:diner).permit(:name, :email, :phone_number, :password, :password_confirmation)
end



end
