class OrderList < ApplicationRecord
  belongs_to :meal
  belongs_to :cart
end
