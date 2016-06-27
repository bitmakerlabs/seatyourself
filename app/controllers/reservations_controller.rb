class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to reservation_confirmation_url(@reservation)
    else
      render :new
    end
  end
  #Method for confirming the reservation after it has been created
  #in routes reservations/:id/confirmation => reservations#confirmation
  #calls this method to find the reservation in the database and saves it
  #in '@confirmation'
  #Use @confirmation in views files to display that reservation information
  def confirmation
    @confirmation = Reservation.find(params[:id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:name, :time, :party_size)
  end

end
