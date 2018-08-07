class SecretsController < ApplicationController 
  before_action :require_login
  
  def show 
    current_user
  end
  
  private 
  
  def require_login
    redirect_to '/login' unless current_user
	end

  
end
