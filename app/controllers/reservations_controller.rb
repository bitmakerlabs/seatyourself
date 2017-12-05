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
    @user = current_user
    @restaurants = Restaurant.all
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.user_id = current_user.id
    @reservation.restaurant_id = params[:reservation][:restaurant_id]
    @reservation.date_time = params[:reservation][:date_time]
    @reservation.party_size = params[:reservation][:party_size]#Still need to iron out
      if @reservation.save

      flash[:notice] = "Reservation was successfully booked!"
      redirect_to user_url(params[:user_id])
    else
      redirect_to new_user_reservation_url(params[:user_id])
      flash[:notice] =  "#{@reservation.errors.values.flatten}"
    end
  end

  def edit
  end

  def update
    @reservation.user_id = params[:user][:id]
    @reservation.restaurant_id = params[:restaurant][:id]
    @reservation.date_time = params[:date_time]
    @reservation.party_size = params[:party_size]
    if @reservation.save
      flash[:notice] = "Reservation was successfully updated!"
      redirect_to user_reservations_url
    else
      render :new
    end
  end

  def destroy
    @reservation.destroy
    flash[:notice] = "You have canceled your reservation"
    redirect_to user_url
  end

end
