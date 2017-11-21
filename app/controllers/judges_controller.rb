class JudgesController < ApplicationController
  def index
    @judge = Judge.new
  end

  def create
    @judge = Judge.new(judge_params)
    if @judge.save
      redirect_to root_path
  end
  end

  private
  def judge_params
    params.require(:judge).permit(:image_id, :gender)
  end

end
