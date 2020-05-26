class CarsController < ApplicationController

  def index
    @cars = Car.where(car.location = params[:location],  )
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
