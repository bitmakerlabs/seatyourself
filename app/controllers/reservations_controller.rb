class ReservationsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :edit, :destroy]
  # before_action :load_restaurant

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @restaurant  = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new

    @reservation.user_id            = params[:reservation][:user_id]
    @reservation.date               = params[:reservation][:date]
    @reservation.number_of_people   = params[:reservation][:number_of_people]
      if @reservation.save
        redirect_to restaurants_path, notice: 'Reservation have succesfully been booked'
      else
        render 'restaurants'
      end
  end
  def update
    @reservation = Reservation.find(params[:id])

    @reservatiton.name             = params[:reservation][:name]
    @reservation.date             = params[:reservation][:date]
    @reservation.number_of_people = params[:reservation][:number_of_people]

    if @reservation.save
      redirect_to resturants_path, notice: 'Resevations have succesfully been updated '
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destory
    redirect_to "/resturants"
  end
end
