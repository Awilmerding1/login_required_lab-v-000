class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  helper_method :current_user
  
  def home 
     redirect_to '/login'
  end
  
  def current_user
    session[:name] ||= nil
    binding.pry
  end
  
  
end
