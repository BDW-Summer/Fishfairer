require 'httparty'
class ApiController < ApplicationController

	def get_by_zip
		@api_key = '2kkpgx2ybsbmgesdqrc9exnx'
		@zipcode = User.find(params[:id]).lake_zipcode
		url = "http://i.wxbug.net/REST/Direct/GetForecast.ashx?zip=#{@zipcode}&nf=1&ih=1&ht=t&ht=i&l=en&c=US&api_key=#{@api_key}"
		
		@weather_data = JSON.parse(HTTParty.get(url).parsed_response)
  		
  		
  		@user_by_zipcode = User.find_all_by_zipcode(params[:zipcode])	 
	 	
 		
    
	end

	def get_weather_for_zip
	
	
	end


end
