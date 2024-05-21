class Order < ApplicationRecord
  belongs_to :user
  has_many :order_lists
  has_many :meals, through: :order_lists
end
