class SessionsController < ApplicationController

def new
end

def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to users_url(user)
    # redirect_to user_reservations_url(user.id), notice: "Logged in!"
  else
    flash.alert = "Incorrect login. Please try again."
    render :new
  end
end

def destroy
  session[:user_id] = nil
  redirect_to restaurants_url, notice: "Logged out"
end

end
