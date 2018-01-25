class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user                       = User.new
    @user.name                  = params[:user][:name]
    @user.email                 = params[:user][:email]
    @user.password              = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.phone_number          = params[:user][:phone_number]

  puts "********"
    p @user

  if @user.save
    redirect_to users_path
  else
    render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end


end
