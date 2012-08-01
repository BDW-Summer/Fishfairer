module SessionsHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end
  
  def current_user=(user)
    @current_user = user
  end

  def current_user
<<<<<<< HEAD
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
    # @current_user ||= User.find(session[:user_id]) if session[:user_id]
=======
    #@current_user ||= User.find_by_remember_token(cookies[:remember_token])
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
>>>>>>> d2f0b8107b16a9bfbcdf362e415f7ae5bb90da51
  end
end
