class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
@restaurant                         = Restaurant.new
@restaurant.name                    = params[:restaurant][:name]
@restaurant.address                 = params[:restaurant][:address]
@restaurant.capacity                = params[:restaurant][:capacity]
@restaurant.menu                    = params[:restaurant][:menu]
@restaurant.summary                 = params[:restaurant][:summary]
@restaurant.price                   = params[:restaurant][:price]
@restaurant.owner_id                = params[:restaurant][:owner_id]

@restaurant.open_time               =  params[:restaurant][:open_time]
@restaurant.close_time              =  params[:restaurant][:close_time]

# @restaurant.user_id = current_user.id
# @restaurant.close_time = Time.utc(params[:restaurant]["close_time(1i)"].to_i,
#                                         params[:restaurant]["close_time(2i)"].to_i,
#                                         params[:restaurant]["close_time(3i)"].to_i,
#                                         params[:restaurant]["close_time(4i)"].to_i,
#                                         params[:restaurant]["close_time(5i)"].to_i)
#     @restaurant.open_time = Time.utc(params[:restaurant]["open_time(1i)"].to_i,
#                                         params[:restaurant]["open_time(2i)"].to_i,
#                                         params[:restaurant]["open_time(3i)"].to_i,
#                                         params[:restaurant]["open_time(4i)"].to_i,
#                                         params[:restaurant]["open_time(5i)"].to_i)
    if @restaurant.save
      redirect_to restaurants_path  notice: 'Restaurant created '

    else
      render :new
    end
  end



  def show
    @restaurant = Restaurant
  end



  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant                         = Restaurant.new
    @restaurant.name                    = params[:restaurant][:name]
    @restaurant.address                 = params[:restaurant][:address]
    @restaurant.capacity                = params[:restaurant][:capacity]
    @restaurant.menu                    = params[:restaurant][:menu]
    @restaurant.summary                 = params[:restaurant][:summary]
    @restaurant.price                   = params[:restaurant][:price]
    @restaurant.owner_id                = params[:restaurant][:owner_id]

    @restaurant.open_time               =  params[:restaurant][:open_time]
    @restaurant.close_time              =  params[:restaurant][:close_time]

    # @restaurant.user_id = current_user.id
    @restaurant.close_time = Time.utc(params[:restaurant]["close_time(1i)"].to_i,
                                            params[:restaurant]["close_time(2i)"].to_i,
                                            params[:restaurant]["close_time(3i)"].to_i,
                                            params[:restaurant]["close_time(4i)"].to_i,
                                            params[:restaurant]["close_time(5i)"].to_i)
    @restaurant.open_time = Time.utc(params[:restaurant]["open_time(1i)"].to_i,
                                            params[:restaurant]["open_time(2i)"].to_i,
                                            params[:restaurant]["open_time(3i)"].to_i,
                                            params[:restaurant]["open_time(4i)"].to_i,
                                            params[:restaurant]["open_time(5i)"].to_i)
    if @restaurant.save
      redirect_to restaurants_path, notice: 'Restaurant updated'
    else
      render :edit
    end
  end

  def destroy
        @restaurant.destroy
        redirect_to restaurants_path
  end

end
