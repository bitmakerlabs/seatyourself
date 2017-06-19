class ReservationsController < ApplicationController

    def index
      @restaurant = Restaurant.find(params[:restaurant_id])
      @reservations = Reservation.all
    end

    def show
      @reservation = Reservation.find(params[:id])
    end

    def new
      @restaurant = Restaurant.find(params[:restaurant_id])
      @reservation = @restaurant.reservations.new
    end

    def create
      @restaurant = Restaurant.find(params[:restaurant_id])
      @reservation = @restaurant.reservations.create(reservation_params)
      @reservation.user_id = current_user.id
      if @reservation.save
        flash[:notice] = "Reservation Saved!"
        # add loyalty points code here
        redirect_to restaurant_reservations_path
      else
        flash.now[:error] = "Sorry try again!"
        render :new
      end
    end

    def edit
      @reservation = Reservation.find(params[:reservation_id])
    end

    def update
      @reservation = Reservation.find(params[:reservation_id])
      if @reservation.update(reservation_params)
        flash[:notice] = "Reservation Updated!"
        redirect_to @reservation
      else
        redirect_back_or_to @reservation
      end
    end

    def destroy
      @reservation = Reservation.find(params[:id])
      @reservation.destroy
      flash[:alert] = "Reservation Deleted!"
      redirect_to '/restaurants'
    end

    def reservation_params
      params.required(:reservation).permit(:time, :date, :party_number)
    end

end
