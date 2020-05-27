class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car = Car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:name, :brand, :model, :renting_price, :experience, :description, :location, :photo)
  end
end
