class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])
      session[:user_id] = u.id

      flash[:notice] = "Welcome back!"
      redirect_to root_url

    else
      flash.now[:alert] = 'Try Again!'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil

    flash[:notice] = "You're Logged Out!"
    redirect_to root_url
  end
end
