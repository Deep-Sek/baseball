class WelcomeController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout "home"

  def index
    if session[:user_id]
      redirect_to home_url
    end
  end


end
