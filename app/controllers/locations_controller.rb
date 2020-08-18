class LocationsController < ApplicationController
  def new
    @location = Location.new
    @hair = Hair.find(params[:hair_id])
  end

  def create
    @location = Location.new(location_params)
    @hair = Hair.find(params[:hair_id])
    @location.hair = @hair
    @location.user = current_user
    if @location.save!
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def show
    @location = Location.find(params[:id])
    @hair = @location.hair
  end

  private
  def location_params
    params.require(:location).permit(:start_date, :end_date)
  end

end


