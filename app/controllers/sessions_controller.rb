class SessionsController < ApplicationController

  def new
  end

 def create
    #user = User.find_by_email(params[:session][:email])
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    auth = request.env["omniauth.auth"]
    if user && user.authenticate(params[:session][:password])
        sign_in user
        redirect_back_or user
        
  		 
  		 redirect_to root_url, :notice => "Signed in!"      
        session[:user_id] = user.id
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
   	session[:user_id] = nil
  	redirect_to root_url, :notice => "Signed out!"
  end
  
end


