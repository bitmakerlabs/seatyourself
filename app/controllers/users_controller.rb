class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    load_user
  end

  def edit
    load_user
  end

  def update
    load_user

    if@user.update_attributes(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end


  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
   load_user
   @user.destroy
   redirect_to restaurants_path
 end


  private

  def load_user
  @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :password, :password_confirmation)
  end



end
