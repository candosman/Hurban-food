class CreateMealReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :meal_reviews do |t|
      t.integer :rating
      t.references :restaurant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
