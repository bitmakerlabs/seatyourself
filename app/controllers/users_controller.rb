class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.kind = params[:user_kind]

    if @user.save
      redirect_to root_url
    else
      flash.now[:alert] = @user.errors.full_messages
      render :new
    end
  end

end
