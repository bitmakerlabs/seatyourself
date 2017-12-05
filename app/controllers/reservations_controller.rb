class ReservationsController < ApplicationController
  before_action :ensure_logged_in
  # before_action :ensure_user_owns_reservation
  #
  # def ensure_user_owns_reservation
  #   unless current_user == @reservation.user
  #     flash[:alert] = "You do not have permission to edit this reservation"
  #     redirect_to user_url
  #   end
  # end



  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.user_id = params[:user][:id]
    @reservation.restaurant_id = params[:restaurant][:id]
    @reservation.date_time = params[:date_time]
    @reservation.party_size = params[:party_size]
    availability #Still need to iron out
    if availability
      if @reservation.save
      flash[:notice] = "Reservation was successfully booked!"
      redirect_to user_reservations_url
    else
      render :new
      end
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.user_id = params[:user][:id]
    @reservation.restaurant_id = params[:restaurant][:id]
    @reservation.date_time = params[:date_time]
    @reservation.party_size = params[:party_size]
    availability #Still need to iron out
    if availability
      if @reservation.save
      flash[:notice] = "Reservation was successfully updated!"
      redirect_to user_reservations_url
    else
      render :new
      end
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservtaion.destroy
    flash[:notice] = "You have canceled your reservation"
    redirect_to user_url
  end



end
