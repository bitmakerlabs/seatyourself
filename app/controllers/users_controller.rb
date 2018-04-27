class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.phone = params[:user][:phone]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save

      session[:user_id] = @user.id
      redirect_to root_url

    else
      render :new
    end

  end

  def show

      if current_user
      @restaurants = User.find_by(id: session[:user_id]).restaurants

      else
        redirect_to restaurants_path
      end
     #
    # sessions[:id] - replace the 1 with this
  end
end
