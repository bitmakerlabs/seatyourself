class SessionsController < ApplicationController

  # goes to login page
  def new

  end

  # logs in user
  def create

    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        redirect_to root_url, notice: "Logged in!"
    else
      render :new
    end
    
  end

  # logs out user 
  def destroy

    session[:user_id] = nil

    redirect_to root_path, alert: "Logged out!"


  end

end
