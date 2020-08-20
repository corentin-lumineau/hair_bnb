class HairsController < ApplicationController
  before_action :set_hair, only: [:show, :destroy]

  def index
    @hairs = policy_scope(Hair)
    @hair_colors = %w(blond roux brun chatain noir rouge blanc)
    @hair_top = %w(Chew4 Kahl-Drogo Sulli Robinson Tormund)
  end

  def new
    @hair = Hair.new
    authorize @hair
  end

  def create
    @hair = Hair.new(hair_params)
    @hair.user = current_user
    authorize @hair
    if @hair.save
      redirect_to hair_path(@hair)
    else
      render :new
    end
  end

  def show
    @user = current_user
    @location = Location.new
    authorize @hair
  end

  def destroy
    authorize @hair
    @hair.destroy
  end

  private

  def set_hair
    @hair = Hair.find(params[:id])
  end

  def hair_params
    params.require(:hair).permit(:title, :description, :color, :quantity, :hair_length, :status, :price, :nature, :photo)
  end
end
