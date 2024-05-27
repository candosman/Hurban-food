class MealReviewsController < ApplicationController
  def new
    @meal =
    @review = Review.new()
  end

  def create

  end
end
