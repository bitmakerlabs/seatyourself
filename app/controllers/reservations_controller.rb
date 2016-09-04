class ReservationsController < ApplicationController

  before_action do
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
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
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:time, :date, :party_size, :user_id)
  end
end
