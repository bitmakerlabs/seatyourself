class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private

  def current_diner
    @current_diner ||= Diner.find(session[:diner_id]) if session[:diner_id]
  end

  def require_login
    unless current_diner
      redirect_to new_session_path
    end
  end

  helper_method :require_login
  helper_method :current_diner
end
