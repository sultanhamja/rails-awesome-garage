class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    # find a car by its id
    @car = Car.find(params[:id])
    # create review on show page
    @review = Review.new
    # Create favourite on show page
    @favourite = Favourite.new
  end
end
