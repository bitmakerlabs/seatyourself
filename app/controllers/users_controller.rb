class UsersController < ApplicationController
  before_action :current_user, only:[:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id # this will remember and keep the user logged in by saving the info in their session cookie
      flash[:notice] = "Thank you for signing up"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @reservations = @user.reservations
    if current_user != @user
      flash[:alert] = "Sorry you cannot access that page"
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
