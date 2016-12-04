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
		  render "new" 
	  end	
  end

	def show
		weather_api
		@saver = Saver.find(params[:id])
		# render json: @saver
  end

	private

	def savers_params
		params.require(:saver).permit(:gas, :kwh, :address)
	end		

	def weather_api
    @api_key = Rails.application.secrets.weather_api_key
  end
end
