<<<<<<< HEAD
module GetapiHelper
	
	def get_by_zip
		@api_key = '2kkpgx2ybsbmgesdqrc9exnx'
		@zipcode = Lake.find(params[:id]).lake_zipcode
		url = "http://i.wxbug.net/REST/Direct/GetForecast.ashx?zip=#{@zipcode}&nf=1&ih=1&ht=t&ht=i&l=en&c=US&api_key=#{@api_key}"
		
		@weather_data = JSON.parse(HTTParty.get(url).parsed_response)
    
	end
=======

module GetapiHelper

>>>>>>> d2f0b8107b16a9bfbcdf362e415f7ae5bb90da51
end
