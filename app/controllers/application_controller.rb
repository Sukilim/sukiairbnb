class ApplicationController < ActionController::Base
	include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new_login_path(scope)
    new_login_path
  end

  private
  def authenticate_user!
  	flash[:notice] = "Please login first"
  	redirect_to root_path unless user_logged_in?
  end

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
helper_method :current_user

end
