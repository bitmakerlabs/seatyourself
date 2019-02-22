class SessionsController < ApplicationController
  def new
    flash[:previous_page] = request.referer
  end

  def create
    user = User.find_by(email: params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        if flash[:previous_page] && flash[:previous_page] != new_user_url
        redirect_to flash[:previous_page], notice: "Logged in!"
        else
          redirect_to root_path
        end
      else
        flash[:notice] = "Login failed !"
        render :new
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to restaurants_url, notice: "Logged out!"
  end
end
