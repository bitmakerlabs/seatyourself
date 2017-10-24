class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])

    @reservation.user = current_user
    @reservation.restaurant = @restaurant
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.party_size = params[:reservation][:party_size]

    if @reservation.save
      redirect_to root_url
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
