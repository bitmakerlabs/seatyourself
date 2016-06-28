class ReservationsController < ApplicationController
  before_action :require_login
  before_action :load_restaurant, except: [:index, :show, :edit, :update]
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = @restaurant.reservations.new(reservations_params)
    @reservation.diner_id = current_diner.id

    if @reservation.save
      redirect_to current_diner
    else
      render 'new'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @reservation.date = @reservation.date.format_date
    @reservation.time = @reservation.time.format_time
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update_attributes(reservations_params)
      redirect_to root_url
    else
      render :edit
    end
  end

  def format_date(date)
    date.strftime("%m/%d/%Y")
  end

  def format_time(date)
    date.strftime("%I:%M %p")
  end

private
def load_restaurant
  @restaurant = Restaurant.find(params[:restaurant_id])
end
def reservations_params
  params.require(:reservation).permit(:diner_id, :restaurant_id, :date, :party_size, :instructions)
end


end
