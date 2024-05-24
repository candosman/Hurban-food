class OrderList < ApplicationRecord
  has_one :order
  belongs_to :meal
  belongs_to :cart
end
