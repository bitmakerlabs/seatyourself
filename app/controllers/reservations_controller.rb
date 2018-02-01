class ReservationsController < ApplicationController
  before_action :ensure_logged_in
  before_action :load_reservation, only: [:show, :edit, :update, :destroy]
  # before_action :ensure_user_owns_reservation, except: [:new, :create]

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
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new
    @reservation.user_id = current_user.id
    @reservation.restaurant_id = @restaurant.id
    @reservation.date_time = Time.utc(params[:reservation]["date_time(1i)"].to_i,
                                        params[:reservation]["date_time(2i)"].to_i,
                                        params[:reservation]["date_time(3i)"].to_i,
                                        params[:reservation]["date_time(4i)"].to_i,
                                        params[:reservation]["date_time(5i)"].to_i)
    @reservation.party_size = params[:reservation][:party_size]
      if @reservation.save

      flash[:notice] = "Reservation was successfully booked!"
      redirect_to users_url
    else
      render "restaurants/show"
      flash[:notice] = @reservation.errors.full_messages.each { |error| puts "#{error.to_s}"}

    end
  end

  def edit
    @user = current_user
    @restaurant = @reservation.restaurant
    @restaurants = Restaurant.all
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation.user_id = current_user.id
    @reservation.restaurant_id = @restaurant.id
    @reservation.date_time = Time.utc(params[:reservation]["date_time(1i)"].to_i,
                                        params[:reservation]["date_time(2i)"].to_i,
                                        params[:reservation]["date_time(3i)"].to_i,
                                        params[:reservation]["date_time(4i)"].to_i,
                                        params[:reservation]["date_time(5i)"].to_i)
    @reservation.party_size = params[:reservation][:party_size]
    if @reservation.save
      flash[:notice] = "Reservation was successfully updated!"
      redirect_to users_url
    else
      render :edit
      flash[:notice] =  @reservation.errors.full_messages
    end
  end

  def destroy
    @reservation.destroy
    flash[:notice] = "You have canceled your reservation"
    redirect_to users_url
  end

end
