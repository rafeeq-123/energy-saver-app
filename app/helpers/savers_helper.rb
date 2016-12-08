module SaversHelper
	def weather_json
		@temp = json_info["main"]["temp"]
		@temp_max = json_info["main"]["temp_max"]
		@temp_min = json_info["main"]["temp_min"]
		@city_name = json_info["name"]
		@decription = json_info["weather"][0]["description"]
	end

	def national_average
		@national = national = 901 #this is the national average of kwh per month 2016
		if @saver.kwh > national
			render partial: "more_effcient"
		elsif	@saver.kwh < national
		  render partial: "effcient"
		else @saver.kwh == national
			render partial: "average_usage"
		end		
	end

	def seasonal_help
		if @temp_max = json_info["main"]["temp_max"] < 60
			render partial: "cold_weather"
		elsif @temp_max = json_info["main"]["temp_max"] > 80
			render partial: "hot_weather"
		else
			"Weather looks alright, but try not to use your appliances"	
		end			
	end

	def snow_rain_fog_mist
		if @decription = json_info["weather"][0]["description"].include?("snow")
			render partial: "snow"
		# elsif @decription = json_info["weather"][0]["description"].include?("rain")
		# 	render partial: "rain"
		# elsif @decription = json_info["weather"][0]["description"].
			else
			" no snow"
		end		
	end		

	private

	def json_info
	 	json_info = JSON.load(open("http://api.openweathermap.org/data/2.5/weather?lat=#{@saver.latitude}&lon=#{@saver.longitude}&appid=d83b75170641860b6912bff3be270e02&units=imperial"))
 	end
end
