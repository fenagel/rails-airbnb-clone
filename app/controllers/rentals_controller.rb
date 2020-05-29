class RentalsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @rental = Rental.new
  end
  def create
    @car = Car.find(params[:car_id])
    @rental = Rental.new(user_id: current_user.id, car_id: @car.id)
    if @rental.save!
     redirect_to dashboards_path
    else
     render :new
    end
  end

  def confirm
    @rental = Rental.find(params[:id])
    @rental.update(@rental.confirmed = true)
    redirect_to dashboards_path
  end

  def decline
    @rental = Rental.find(params[:id])
    @rental.update(@rental.confirmed = false)
    redirect_to dashboards_path
  end
end
