class AvailabilitiesController < ApplicationController
before_action :new_availability, only: [:new, :create]
before_action :find_availability, only: [:edit, :update]

  def new
    #new_availability
  end

  def create
    #new_availability
    @availability =  Availability.new(availability_params)
    @availability.restaurant_id = params[:id]

    if @availability.save
      flash[:notice] = "Your Hours have been created"
      redirect_to root_path
    else
      render :new
    end

  end

  def edit
    #find_availability
  end

  def update
    #find_availability
  end
  private

  def availability_params
    params.require(:availability).permit(:available_time)
  end


  def new_availability
    @availability = Availability.new
  end

  def find_availability
    @availability = Availability.find(params[:id])
  end

end
