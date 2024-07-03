class RestaurantsController < ApplicationController
  before_action :get_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(param_restaurants)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def get_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def param_restaurants
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
