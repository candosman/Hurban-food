class AddDescriptionToMeals < ActiveRecord::Migration[7.1]
  def change
    add_column :meals, :description, :text
  end
end
