class LakesController < ApplicationController
	def index
		@lakes = Lake.all
	end
	
  def show
  	@api_key = '2kkpgx2ybsbmgesdqrc9exnx'
	#@zipcode = Lake.find(params[:id]).lake_zipcode
	url = "http://i.wxbug.net/REST/Direct/GetForecast.ashx?zip=#{@zipcode}&nf=1&ih=1&ht=t&ht=i&l=en&c=US&api_key=#{@api_key}"
		
	@weather_data = JSON.parse(HTTParty.get(url).parsed_response)
	
  	@lake = Lake.find_by_name_of_lake(params[:name_of_lake])
  	
     end
  
  
end

