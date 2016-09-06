class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You have succesfully created an Account"
      redirect_to new_session_path
    else
      flash[:alert] = "There was a problem with creating your Account"
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:success] = "You have succesfully edited your Account"
      redirect_to users_path
    else
      flash[:alert] = "There was a problem with editing your Account"
      redirect_to edit_users_path
    end
  end

  def show
    @user = current_user
    @reservations = current_user.reservations
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
