class ReservationsController < ApplicationController

  def new
   @reso = Reservation.new
  end

  def create
    @reso = Reservation.new

    @reso.date = params[:reservation][:date]
    @reso.time = params[:reservation][:time]
    @reso.partysize = params[:reservation][:partysize]
    @reso.user_id = session[:user_id]

    if @reso.save
      flash[:notice] = "Reservation successfully made."
      redirect_to reservations_path
    else
      render :new
    end
  end

  def index
    @resos = Reservation.all
  end

  def destroy
    @reso = Reservation.find(params[:id])
    @reso.destroy

    redirect_to user_url(current_user)
  end

end
