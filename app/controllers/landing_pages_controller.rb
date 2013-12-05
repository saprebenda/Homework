class LandingPagesController < ApplicationController
  def home
  	if !user_signed_in?
  		redirect_to new_user_session_path
  	else
  		redirect_to deals_path
  	end
  end
  def product
  end
end

