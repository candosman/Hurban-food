class CartsController < ApplicationController
  def show
    # @order_lists = OrderList.where(cart_id: @cart.id)
    @order_lists = @cart.order_lists
  end

  def update
    @order_lists = @cart.order_lists
    @order = Order.create(user: current_user, amount: @cart.total_price, order_number: order_number_generator)
    @order.order_lists = @order_lists
    @order.save
    @cart.order_lists = []
    redirect_to order_path(@order), notice: "Thank for your order, it is on its way 👌"
  end

  private

  def order_number_generator
    if Order.last.nil?
      order_number = 1000
    else
      order_number = Order.last.order_number + 26
    end
    order_number
  end
end
