class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if logged_in?
  end

  helper_method :current_user # helper_method lets you use this shorthand in the views as well

  def logged_in?
    session[:user_id].present?
  end

  helper_method :logged_in?

  def require_logged_in
    unless logged_in?
      flash[:alert] = "Nice try buddy, Log in first you tard!"
      redirect_to new_session.url
    end
  end
end
