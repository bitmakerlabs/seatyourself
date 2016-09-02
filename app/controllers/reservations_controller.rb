class ReservationsController < ApplicationController

  before_action do
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.fin(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:time, :date, :party_size)
  end
end
