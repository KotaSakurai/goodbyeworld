class JudgesController < ApplicationController
	def index
		@judge = Judge.new
	end

    def create
    	@judge = Judge.new(creates_params)
    	if @judge.save
    	 redirect_to root_path
        end
    end

    private
    def creates_params
    	params.require(:judge).permit(:images_id, :gender)
    end



end
