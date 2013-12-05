class DealsController < ApplicationController
  def new
    @deal = Deal.new
    if !user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def create
  	@deal = Deal.new(params[:deal])
	  if(@deal.User_id !=current_user.id)
      redirect_to root_path
    else
      if @deal.save
		    redirect_to deals_path
      else
		    render 'new'
      end
    end
  end

  def edit
    @deal = Deal.find(params[:id])
  end

  def update
    @deal = Deal.find(params[:id])
    if @deal.update_attributes(params[:deal])
      redirect_to deal_path(@deal.id)
    else
      render 'edit'
    end
  end

  def index
    @deal = Deal.new
    if user_signed_in?
      @deals_high = Deal.high_price
      @deals_med = Deal.med_price
      @deals_low = Deal.low_price
      @deals = Deal.all
    else
      redirect_to new_user_session_path
    end
  end

  def destroy
    @deal = Deal.find(params[:id])
    @deal.destroy
    redirect_to deals_path
  end
  
  def show
      @deal = Deal.find(params[:id])
  end
end