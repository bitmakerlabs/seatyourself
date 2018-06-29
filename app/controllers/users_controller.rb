class UsersController < ApplicationController

  def show
    @resos = User.find(current_user).reservations
    @user = User.find(current_user)
    @user_restaurants = User.find(current_user).owned_restaurants
  end

 def new
   @user = User.new
 end

 def create

   @user = User.new

   @user.first_name =              params[:user][:first_name]
   @user.last_name =               params[:user][:last_name]
   @user.email =                   params[:user][:email]
   @user.password =                params[:user][:password]
   @user.password_confirmation =   params[:user][:password_confirmation]

   if @user.save
     session[:user_id] = @user.id
     redirect_to root_url
   else
     render :new
   end
 end

end
