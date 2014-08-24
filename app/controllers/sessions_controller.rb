class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to after_sign_in_path_for(session[:user_id])
  end

  def destroy
    session[:user_id] = nil
    redirect_to after_sign_in_path_for(session[:user_id])
  end
end