class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  protected 
  def authenticate_user
    if session[:user_id]
      return true 
    else
      flash[:alert] = "You must be logged in to view this page!"
      redirect_to root_url
      return false
    end
  end
end


