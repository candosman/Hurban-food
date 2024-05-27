class Order < ApplicationRecord
  belongs_to :user
  has_many :order_lists, dependent: :destroy
  has_many :meals, through: :order_lists
end
