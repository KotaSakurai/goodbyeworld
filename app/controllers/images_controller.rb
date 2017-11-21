class ImagesController < ApplicationController
    def index
      @images = Image.all
      @judge_men_count = Judge.where(gender:0).count
      @judge_women_count = Judge.where(gender:1).count
    end

    def create
      @image = Image.new(image_params)
      if @image.save
        redirect_to root_path
      else
        render :new
      end
    end

    def new
      @image = Image.new
    end

    def edit
    end

    def show
    end

    def update
    end

    def destroy

    end

    private
    def image_params
      params.require(:image).permit(:name, :image)
    end

end
