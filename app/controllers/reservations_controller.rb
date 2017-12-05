class ReservationsController < ApplicationController
  before_action :ensure_logged_in
  before_action :load_reservation, only: [:show, :edit, :update, :destroy]
  before_action :ensure_user_owns_reservation, except: [:new, :create]
  
  def load_reservation
    @reservation = Reservation.find(params[:id])
  end

  def ensure_user_owns_reservation
  	@reservations = Reservation.find_by(user_id: params[:user_id])
    unless current_user.id == @reservations.user_id
      flash[:alert] = "Please log in"
      redirect_to new_sessions_url
    end
  end

  def index
	  @reservations = Reservation.find_by(user_id: params[:user_id])
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.user_id = params[:user][:id]
    @reservation.restaurant_id = params[:restaurant][:id]
    @reservation.date_time = params[:date_time]
    @reservation.party_size = params[:party_size]#Still need to iron out
    if @reservation.availability
      if @reservation.save
      flash[:notice] = "Reservation was successfully booked!"
      redirect_to user_reservations_url
    else
      render :new
      end
    end
  end

  def edit
  end

  def update
    @reservation.user_id = params[:user][:id]
    @reservation.restaurant_id = params[:restaurant][:id]
    @reservation.date_time = params[:date_time]
    @reservation.party_size = params[:party_size]
    if @reservation.availability
      if @reservation.save
      flash[:notice] = "Reservation was successfully updated!"
      redirect_to user_reservations_url
    else
      render :new
      end
    end
  end

  def destroy
    @reservtaion.destroy
    flash[:notice] = "You have canceled your reservation"
    redirect_to user_url
  end

end
