class HairsController < ApplicationController
  def index
    @hairs = policy_scope(Hair)
  end

  def new
    @hair = Hair.new
    authorize @hair
  end

  def create
    @hair = Hair.new(hair_params)
    authorize @hair
    if @hair.save
      redirect_to hair_path(@hair)
    else
      render :new
    end
  end

  def show
    @hair = Hair.find(params[:id])
    authorize @hair
  end

  def destroy
    @hair = Hair.find(params[:id])
    authorize @hair
    @hair.destroy
  end

  private

  def hair_params
    params.require(:hair).permit(:title, :description, :color, :type, :quantity, :hair_length, :status, :price)
  end
end
