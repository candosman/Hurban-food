class AddCartToOrderLists < ActiveRecord::Migration[7.1]
  def change
    add_reference :order_lists, :cart, foreign_key: true
  end
end
