class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.owner = params[:user][:owner]
    @user.password = params[:user][:password]


    if @user.save
      redirect_to restaurants_url
    else
      render :new
    end

  end

end
