class HomeController < ApplicationController
  protect_from_forgery
  before_filter :authenticate_user!
  
  def index 
    user_signed_in?
    current_user
    user_session
    render :action => "index"
  end
end
