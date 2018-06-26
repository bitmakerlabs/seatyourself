class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:sessions][:email])

    if user && user.authenticate(params[:sessions][:password])

      session[:user_id] = user.id

      redirect_to root_url
    else
      render :new_users_path
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
