class CartsController < ApplicationController
  def show
    # @order_lists = OrderList.where(cart_id: @cart.id)
    @order_lists = @cart.order_lists
  end

  def update
    @order_lists = @cart.order_lists
    @order = Order.create(user: current_user, amount: @cart.total_price)
    @order.order_lists = @order_lists
    @order.save
    @cart.order_lists = []
    redirect_to root_path, notice: "Thank for your order, it is on its way 👌"
  end
end
