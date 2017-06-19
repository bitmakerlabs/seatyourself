class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:notice] = 'Bon Appétit!'
      redirect_to root_path
    else
      flash.now[:error] = 'Oops! Try again!!'
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       flash[:notice] = 'Updating completed'
       redirect_to user_path
    else
       flash.now[:error] = 'Oops! Try again!!'
       render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = 'Deleting completed'
      redirect_to user_path
    else
      flash.now[:error] = 'Oops! Try again!!'
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation)
  end

end
