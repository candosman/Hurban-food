class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :order_lists
  has_many :orders, through: :order_lists
end
