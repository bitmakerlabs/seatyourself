class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Signed Up!"
    else
      render "new"
    end
  end

  def update
  @user = User.find(params[:id])

  if @user.update_attributes(user_params)
    redirect_to user_url(@user)
  else
    render edit_user_url
  end
end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_url
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation, :phone)
  end
end
