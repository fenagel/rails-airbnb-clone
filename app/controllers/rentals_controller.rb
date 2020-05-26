class RentalsController < ApplicationController
  def create
    ## fill in the correct params >> @rental = Rental.new(params?)
    raise
    ## need to implement pundit so that >> @rental.user = current_user
    if @rental.save!
      redirect_to root_path
    else
      render :create
    end
  end

  def confirm
    @rental = Rental.find(params[:id])
    @rental.update(@rental.confirmed = true)
  end

  def decline
    @rental = Rental.find(params[:id])
    @rental.update(@rental.confirmed = false)
  end
end
