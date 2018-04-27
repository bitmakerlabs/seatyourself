class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :user_own_a_restaurant

    private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def ensure_logged_in

    unless current_user
      redirect_to new_session_url, alert: "Please log in"
    end
  end

  def ensure_user_owns_restaurant
    unless current_user == @restaurant.user
      flash[:alert] = "Please log in"
      redirect_to new_session_url
    end
  end

end
