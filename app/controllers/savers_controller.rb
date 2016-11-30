class SaversController < ApplicationController
	def welcome
	end

	def index
		@savers = Saver.all
	end

	def new
		@saver = Save.new
	end

	def create
		saver = current_user.savers.new(savers_params)
		if saver.save
			redirect_to save.id 
		else
			render 'new'
		end	
	end

	private

	def savers_params
		params.require(:saver).permit(:gas, :kwh)
	end		
end
