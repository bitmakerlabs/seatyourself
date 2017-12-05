class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  config.time_zone = 'Eastern Time (US & Canada)'

  def ensure_logged_in
    unless current_user
      flash[:alert] = "Please log in"
      redirect_to new_sessions_url
    end
  end

  private

  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
end
