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
		if saver.save
			redirect_to saver_url(saver.id)
		else
			render 'new'
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
