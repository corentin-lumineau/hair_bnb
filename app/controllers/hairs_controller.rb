class HairsController < ApplicationController
  def index
    @hairs = Hair.all
  end

  def new
    @hair = Hair.new
  end

  def create
    @hair = Hair.new(hair_params)
    if @hair.save
      redirect_to hair_path(@hair)
    else
      render :new
    end
  end

  def show
    @hair = Hair.find(params[:id])
  end

  def destroy
    @hair = Hair.find(params[:id])
    @hair.destroy
  end

  private

  def hair_params
    params.require(:hair).permit(:title, :description, :color, :type, :quantity, :hair_length, :status, :price)
  end
end
