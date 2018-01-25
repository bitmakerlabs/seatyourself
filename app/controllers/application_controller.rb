class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def ensure_restaurant_owner
     if session[:user_id] != @restaurant.user_id
       flash[:alert] = "This is not your restaurant"
       redirect_to root_path
     end
   end

  def time_to_am_pm(time)
    if time > 12
      return "#{time - 12}:00PM"
    else
      return "#{time}:00AM"
    end
  end

  helper_method :current_user, :time_to_am_pm, :ensure_restaurant_owner

end
