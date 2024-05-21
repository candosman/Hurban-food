class AddReferencesToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_reference :meals, :restaurant, foreign_key: true
  end
end
