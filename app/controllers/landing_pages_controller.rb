class LandingPagesController < ApplicationController
  def home
  	if !user_signed_in?
  		redirect_to new_user_registration_path
  	else
  		redirect_to landing_pages_about_path
  	end
  end
  
  def product
  end
  
  def about
  end

  def recent
  end

  def order
  end
end
