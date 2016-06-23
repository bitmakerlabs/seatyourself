class ReservationsController < ApplicationController

  def index
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to reservations_url
    else
      render 'new'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update_attributes(reservation_params)
      redirect_to reservations_url(@reservation)
    else
      render :edit
    end
  end

private

def reservation_params
  params.require(:reservation).permit(:time, :party_size, :diner_id, :restaurant_id)
end


end
