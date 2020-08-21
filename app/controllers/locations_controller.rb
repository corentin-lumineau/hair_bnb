class LocationsController < ApplicationController
  def new
    @location = Location.new
    @hair = Hair.find(params[:hair_id])
    authorize @location
  end

  def create
    @location = Location.new(location_params)
    authorize @location
    @hair = Hair.find(params[:hair_id])
    @location.hair = @hair
    @location.user = current_user
    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def show
    @location = Location.find(params[:id])
    authorize @location
    @hair = @location.hair
  end

  def index
    @locations = policy_scope(Location.where(user: current_user))
  end

  private

  def location_params
    params.require(:location).permit(:start_date, :end_date)
  end

end
