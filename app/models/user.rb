class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :restaurants
  has_many :orders, dependent: :destroy
  has_many :restaurant_reviews
  has_many :meal_reviews

  def owner?
    self.restaurant.present?
  end
end
