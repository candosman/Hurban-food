class MealReviewsController < ApplicationController
  def new
    @meal = Meal.find(params[:meal_id])
    @review = MealReview.new
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @review = MealReview.new(review_params)
    @review.user = current_user
    @review.meal = @meal
    if @review.save
      redirect_to restaurant_meals_path(@meal.restaurant)
    else
      render :new, status: :unprocessable_entity
    end

  end
  def review_params
    params.require(:meal_review).permit(:rating)
  end
end
