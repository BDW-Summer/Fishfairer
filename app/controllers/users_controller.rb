require 'httparty'

class UsersController < ApplicationController
  before_filter :signed_in_user, :only=> [:edit, :update]
  before_filter :correct_user,   :only=> [:edit, :update]
   before_filter :admin_user,     :only=> :destroy

   def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json=> @user }
    end
  end
  
    def create
    @user = User.new(params[:user])
    if @user.save
   	  session[:user_id] = @user.id
   	  sign_in @user
      flash[:success] = "Welcome to FishFairer, you just made an account"
      redirect_to @user
    else
      render 'new'
    end
    
  end
  def index
    @users = User.paginate(:page=> params[:page])
  end
  
  def show
  	
		@api_key = '2kkpgx2ybsbmgesdqrc9exnx'
		@zipcode = User.find(params[:id]).zipcode
		url = "http://i.wxbug.net/REST/Direct/GetForecast.ashx?zip=#{@zipcode}&nf=1&ih=1&ht=t&ht=i&l=en&c=US&api_key=#{@api_key}"
		
		@weather_data = JSON.parse(HTTParty.get(url).parsed_response)	
  	
  		
      #@user = User.find(params[:id])
      @user = current_user
  		@user_by_zipcode = User.find_all_by_zipcode(params[:zipcode])	 
	 	if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(:page=> params[:page])
    end
  
  end
   def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
    private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_path, :notice=> "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
     def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end

