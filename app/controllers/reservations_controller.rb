class ReservationsController < ApplicationController

def create_reservation(user_id,rest_id,start_time, end_time, no_of_guests )
  max_time = 1
  current_cap = max_cap
  reservation.r.id = params[][]





end  #create reservation ends


def create
  @reservation = Reservation.new
  @reservation.time = params[:reservation][:time]
  @reservation.number_of_guests = params[:reservation][:number_of_guests]
  @reservation.user_id = params[:reservaation][:user_id]
  @reservation.restaurant_id = params[:reservaation][:restaurant_id]

  # conditions of saving the

@reservation.save
end


def edit

end


def update

end




def delete

end



end
