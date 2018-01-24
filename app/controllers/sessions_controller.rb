class SessionsController < ApplicationController

  def create
   user = User.find_by(email: params[:email])
   if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect_to restaurants_url, flash[:notice] = ["Successfully logged in!"]
   else
     flash[:alert] = ["Username/password are incorrect, please try again!"]
     render :new
   end
  end

  def destroy
    session[:user_id] = nil
    redirect_to restaurants_url, flash[:notice] = ["Successfully logged out!"]
  end


end
