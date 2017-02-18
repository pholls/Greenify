class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    log_in @user
    redirect_to root_path,  notice: 'You are now logged in!'
  end

  def destroy
  	log_out  
    redirect_to root_path,  notice: 'You are now logged out!'
  end
end