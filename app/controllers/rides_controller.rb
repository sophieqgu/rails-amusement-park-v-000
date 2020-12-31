class RidesController < ApplicationController

  def create
    @ride = Ride.create(ride_params)

    if @ride.valid?
      redirect_to user_path(current_user), notice:@ride.take_ride
    else
      redirect_to attraction_path(@attraction)
    end 
  end

  private

  def ride_params
    params.require(:ride).permit(
    :user_id,
    :attraction_id
    )
  end

end
