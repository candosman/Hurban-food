class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :order_lists, dependent: :destroy
  has_many :orders, through: :order_lists
  has_one_attached :photo
  has_many :meal_reviews, dependent: :destroy
end
