class ReservationsController < ApplicationController


    def index
        @reservations = Reservation.all
    end

    def show
        @reservation = Reservation.find(params[:id])
    end

    def new
        @reservation = Reservation.new
        @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def create
        @reservation = Reservation.new
        @reservation.date = params[:reservation][:date]
        @reservation.time = params[:reservation][:time]
        @reservation.party_size = params[:reservation][:party_size]
        @reservation.restaurant_id = params[:restaurant_id]


        @reservation.user       = current_user
        if @reservation.save
            redirect_to user_path(current_user)
        else
            render :new
        end
    end
    def edit
        @reservation = Reservation.find(params[:id])
    end

    def update
        @reservation            = Reservation.find(params[:id])
        @reservation.date       = params[:reservation][:date]
        @reservation.time       = params[:reservation][:time]
        @reservation.party_size = params[:reservation][:party_size]
        if @reservation.save
            flash[:notice] = "Reservation Successfully created..."
            redirect_to restaurant_reservation_url(@reservation.id)
        else
            render :edit
        end
    end
    def destroy
        @reservation.destroy
    end
    def load_reservations
        @reservation = Reservation.find(params[:id])
    end
    def ensure_user_owns_reservation
        unless current_user == @reservation.user
            flash[:alert] = " You are not the owner of the reservation! "
            redirect_to new_session_url
        end
    end
end
