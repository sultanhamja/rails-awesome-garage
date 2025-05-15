class ReviewsController < ApplicationController
  # create review
  def create
    # create review for the car
    @review = Review.new(review_params)
    # find car to review
    @car = Car.find(params[:car_id])
    #liniking review to a car
    @review.car = @car
    # validate review
    if @review.save
      redirect_to car_path(@car)
    else
      # if fails render back to same page with an error
      render 'cars/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
