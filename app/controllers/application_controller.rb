class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  after_filter :store_location

  def store_location
   if (!request.fullpath.match("/users") && !request.xhr?)
     session[:previous_url] = request.fullpath
   end
  end
  
  private
  def after_sign_in_path_for(resource)
    session["user_return_to"] || root_path
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
