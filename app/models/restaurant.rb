class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :meals
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  has_many :restaurant_reviews
  has_many :meal_reviews
end
