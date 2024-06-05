class RestaurantsReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = RestaurantReview.new(review_params)
    @review.user = current_user
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render restaurant_path(@restaurant), status: :unprocessable_entity
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
