class UsersController < ApplicationController

  # goes to sign up page
  def new
    @user = User.new
  end

  # sign up user
  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.phone = params[:user][:phone]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    @user.save

  end

  # goes to 'My Restaurants' owned and managed by Restaurant Owner
  def show

  end
end
