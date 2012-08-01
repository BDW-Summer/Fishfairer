class SessionsController < ApplicationController

  def new
  end

 def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # sign_in user
<<<<<<< HEAD
      
       	auth = request.env["omniauth.auth"]
  		user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || 							User.create_with_omniauth(auth)
  		session[:user_id] = user.id
  		redirect_to root_url, :notice => "Signed in!"
      
      #session[:user_id] = user.id
      
      
      
=======
      session[:user_id] = user.id
      
      redirect_to user
>>>>>>> d2f0b8107b16a9bfbcdf362e415f7ae5bb90da51
      
    else
    
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
   	session[:user_id] = nil
  	redirect_to root_url, :notice => "Signed out!"
  
  end
  
<<<<<<< HEAD
  
  def create
 
end


end


=======
end
>>>>>>> d2f0b8107b16a9bfbcdf362e415f7ae5bb90da51
