class LakesController < ApplicationController
	before_filter :signed_in_user, :only=> [:edit, :update]
  before_filter :correct_user,   :only=> [:edit, :update]
	def index
		@lakes = Lake.all
    
	end
	
  def show
    @api_key = '2kkpgx2ybsbmgesdqrc9exnx'
  	@zipcode = Lake.find(params[:id]).lake_zipcode
  	url = "http://i.wxbug.net/REST/Direct/GetForecast.ashx?zip=#{@zipcode}&nf=1&ih=1&ht=t&ht=i&l=en&c=US&api_key=#{@api_key}"
  		
  	@weather_data = JSON.parse(HTTParty.get(url).parsed_response)
  	#@user = User.find(params[:id])
    @user = current_user
    @lake = Lake.find(params[:id])
    	
    @microposts = @lake.microposts
    @micropost  = current_user.microposts.build
     #@micropost = current_user.micropost.build(params[:micropost])
	 if signed_in?
      
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate :page=> (params[:page])
    end	
  end
  
  def vote
  	value = params[:type] == "up" ? 1 : -1
  	#@lake = Lake.find_by_name_of_lake(params[:name_of_lake])
    @lake = Lake.find(params[:id])
  	@lake.add_evaluation(:votes, value, current_user)
  	
  	redirect_to :back, :notice=> "Thanks for Voting"
  end
  
end

