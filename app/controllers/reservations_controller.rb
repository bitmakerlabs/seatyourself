class ReservationsController < ApplicationController
#
# def create_reservation(user_id,rest_id,start_time, end_time, no_of_guests )
#   max_time = 1
#   current_cap = max_cap
#   reservation.restaurant_id = params[][]
#   reservation.user_id = params[][]
#   reservation.time  = params[][]
#   reservation.number_of_guests = params[]
#
#
#
#   if (restaurant.capacity > no_of_guests) && (time) && current_day == true
#
#       allow the party
#       current_cap =
#     else
#
#       reservation request cancelled
#
#   end
#


#
# def capacity
#   @capacity = Restaurant.find(params[:restaurant_id]).capacity
# end

# end  #create reservation ends


def create
  @reservation = Reservation.new
  @reservation.time = params[:reservation][:time]
  @reservation.number_of_guests = params[:reservation][:number_of_guests]
  @reservation.user_id = params[:reservation][:user_id]
  @reservation.restaurant_id = params[:reservation][:restaurant_id]


  @restaurant_total_capacity = Restaurant.find(params[:restaurant_id]).capacity

  @restaurant_open =


  if  (@restaurant_total_capacity < @reservation.number_of_guests)&&()
    puts "NOPE"
  else
    puts "OKAY"
    redirect_to restaurants_url
  end

end


def edit

end


def update

end




def delete

end



end
