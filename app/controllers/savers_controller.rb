class SaversController < ApplicationController
	def welcome
	end

	def index
		@savers = Saver.all
	end

	def new
		@saver = Saver.new
	end

	def create
		saver = current_user.savers.new(savers_params)
		respond_to do |format|
		if saver.save
			format.html { redirect_to saver_url(saver.id), notice: 'Your information has been posted.' }
      format.json { render json: saver, status: :created, location: saver}
		else
		  format.html { render action: "new" }
      format.json { render json: saver.errors, status: :unprocessable_entity }
    end
	end	
end

	def show
		@saver = Saver.find(params[:id])
	end

	private

	def savers_params
		params.require(:saver).permit(:gas, :kwh)
	end		
end
