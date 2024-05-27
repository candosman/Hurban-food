class RemoveRestaurantAddMealToMealReviews < ActiveRecord::Migration[7.1]
  def change
    remove_reference :meal_reviews, :restaurant, foreign_key: true
    add_reference :meal_reviews, :meal, foreign_key: true
  end
end
