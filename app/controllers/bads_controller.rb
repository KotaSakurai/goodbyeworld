class BadsController < ApplicationController

  def create
    @bad = Bad.new(bad_params)
    if @bad.save
    redirect_to root_path
  end
  end

  private
  def bad_params
    params.require(:bad).permit(:image_id)
  end

  end
