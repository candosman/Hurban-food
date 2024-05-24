class Cart < ApplicationRecord
  has_many :order_lists
  has_many :meals, through: :order_lists

  def total_price
    self.meals.sum { |meal| meal.price }
  end
end
