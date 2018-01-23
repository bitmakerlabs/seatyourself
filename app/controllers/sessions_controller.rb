class SessionsController < ApplicationController

  def create
   user = User.find_by(email: params[:email])
   if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect_to restaurants_url
   else
     render :new
   end
  end

  def destroy
    session[:id] = nil
  end


end
