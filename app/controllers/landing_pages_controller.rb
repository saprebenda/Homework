class LandingPagesController < ApplicationController
  def home
  	if !user_signed_in?
  		redirect_to new_user_session_path
  	before_filter :authenticate_user!
  end
end
