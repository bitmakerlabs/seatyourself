class ReservationsController < ApplicationController
  before_action :ensure_logged_in, except: [:index]
  before_action :load_reservation, only: [:show, :edit, :update, :destroy]
  # before_action :ensure_user_owns_reservation

def load_reservation
  @reservation = Reservation.find(params[:id])
end

def ensure_user_owns_reservation
  unless current_user.id == @reservation.user_id
    flash[:alert] = "Please log in"
    redirect_to new_sessions_url
  end
end

def index
	@reservations = Reservation.find_by(user_id: params[:user_id])
end

end
