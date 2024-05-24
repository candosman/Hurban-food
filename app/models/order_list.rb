class OrderList < ApplicationRecord
  belongs_to :order
  belongs_to :meal
  belongs_to :cart
end
