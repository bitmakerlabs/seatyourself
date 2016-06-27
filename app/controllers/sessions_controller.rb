class SessionsController < ApplicationController
  def new
  end

  def create
    diner = Diner.find_by(email: params[:email])
    if diner && diner.authenticate(params[:password])
      session[:diner_id] = diner.id
      redirect_to restaurants_url, notice: "Logged in!"
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
