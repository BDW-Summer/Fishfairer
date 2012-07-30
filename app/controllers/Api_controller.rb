require 'httparty'
class ApiController < ApplicationController

	def get_by_zip
	 @user_by_zip = User.find_all_by_zip(params[:zip])	 
	 render json: @user_by_zip 
	end

	def get_weather_for_zip
		params[:zipcode]
		url = "http://i.wxbug.net/REST/Direct/GetForecast.ashx?zip=80026&nf=1&ih=1&ht=t&ht=i&l=en&c=US&api_key=#{@api_key}"
		@api_key = 2kkpgx2ybsbmgesdqrc9exnx
		render json: HTTParty.get(url)
	
	end


end
