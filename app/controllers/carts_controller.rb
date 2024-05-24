class CartsController < ApplicationController
  def show
    @order_lists = OrderList.where(cart_id: @cart.id)
  end
end
