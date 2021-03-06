class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    if params[:query].present?
      sql_query = "location ILIKE :query"
      @cars = Car.where(sql_query, query: "%#{params[:query]}%").geocoded
      @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
    end
    else
      @cars = Car.all.geocoded
      @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
      end
    end
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
      redirect_to dashboards_path
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
    redirect_to dashboards_path
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to dashboards_path
  end

  private

  def car_params
    params.require(:car).permit(:name, :brand, :model, :renting_price,
    :experience, :description, :location, :photo)
  end
end
