class AttractionsController < ApplicationController

  def index
  end

  def new
  end

  def show
    @attraction = Attraction.find(params[:id])
    @ride = attraction.rides.build(user_id: current_user.id)
  end

  def edit
  end

  def update
  end


  private
    def attraction_params
      params.require(:attraction).permit(
        :name,
        :min_height,
        :tickets,
        :happiness_rating,
        :nausea_ratiing
      )
    end
end
