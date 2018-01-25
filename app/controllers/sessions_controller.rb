class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params [:email])
    if user && user.authenticate(params [:password])
      session[:user_id] = user.id
      redirect_to new_sessions_path, notice: "Logged in!"
    else
      flash[:notice] = "Invalid email or password"
      render "new"
    end
  end

  def destory
    session[:user_id] = nil
    redirect_to new_sessions_path, notice: "Logged out!"
  end
end
