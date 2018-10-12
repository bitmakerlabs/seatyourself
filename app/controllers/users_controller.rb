class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]


    if @user.save
      current_user = @user
      redirect_to restaurants_url
    else
      render :new
    end
  end

  def show
    @restaurants = current_user.restaurants
  end

end
