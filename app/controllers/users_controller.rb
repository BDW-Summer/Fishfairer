require 'httparty'

class UsersController < ApplicationController
  
   def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end
  
<<<<<<< HEAD
    def create
    @user = User.new(params[:user])
=======
  def create
   	@user = User.new(params[:user])
>>>>>>> d2f0b8107b16a9bfbcdf362e415f7ae5bb90da51
    if @user.save
   	  session[:user_id] = @user.id
      flash[:success] = "Welcome to DealHawk, you just made an account"
      redirect_to @user
    else
      render 'new'
    end
    
  end
  
  
  def show
<<<<<<< HEAD
  	
		@api_key = '2kkpgx2ybsbmgesdqrc9exnx'
		@zipcode = User.find(params[:id]).zipcode
		url = "http://i.wxbug.net/REST/Direct/GetForecast.ashx?zip=#{@zipcode}&nf=1&ih=1&ht=t&ht=i&l=en&c=US&api_key=#{@api_key}"
		
		@weather_data = JSON.parse(HTTParty.get(url).parsed_response)
  		
  		@user = current_user
  		#@user = User.find(params[:id])
  		@user_by_zipcode = User.find_all_by_zipcode(params[:zipcode])	 
	 	
 		
    
=======
  		
  		@api_key = 'dfdf89cfb7fa01ce0041da8d98514d01b94683ca'
		@zipcode = current_user.zipcode
		url = "https://api.groupon.com/v2/deals.json?division_id=#{@zipcode}&tag=Arcade&client_id=#{@api_key}"
		
		@deal_data = HTTParty.get(url).parsed_response
		@deals =  @deal_data["deals"]
		#Rails.logger.debug current_user

		#@valid_deals = @deals.select { |deal| deal["isNowDeal"] == 'true' }
		
		
  		@user = current_user
  		@user_by_zipcode = User.find_all_by_zipcode(params[:zipcode])	 
    	
   
    	
>>>>>>> d2f0b8107b16a9bfbcdf362e415f7ae5bb90da51
    	
  end
end

