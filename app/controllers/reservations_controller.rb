class ReservationsController < ApplicationController
  before_action :ensure_logged_in
  def create
    @reservation = Reservation.new

    @reservation.time = params[:reservation][:time]
    @reservation.date = params[:reservation][:date]
  end

  def index

  end

  def destroy

  end

end
