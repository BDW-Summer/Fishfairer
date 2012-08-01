require 'httparty'

class UsersController < ApplicationController
  
   def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end
  
    def create
    @user = User.new(params[:user])
    if @user.save
   	  session[:user_id] = @user.id
      flash[:success] = "Welcome to DealHawk, you just made an account"
      redirect_to @user
    else
      render 'new'
    end
    
  end
  
  
  def show
  	
		@api_key = '2kkpgx2ybsbmgesdqrc9exnx'
		@zipcode = User.find(params[:id]).zipcode
		url = "http://i.wxbug.net/REST/Direct/GetForecast.ashx?zip=#{@zipcode}&nf=1&ih=1&ht=t&ht=i&l=en&c=US&api_key=#{@api_key}"
		
		@weather_data = JSON.parse(HTTParty.get(url).parsed_response)
  		
  		@user = current_user
  		#@user = User.find(params[:id])
  		@user_by_zipcode = User.find_all_by_zipcode(params[:zipcode])	 
	 	
 		
    
    	
  end
end

