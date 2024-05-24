class OrderListsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[create]

  def create
    @order_list = OrderList.new(order_list_params)
    if @order_list.save
      redirect_to restaurant_meals_path(@order_list.meal.restaurant), notice: 'Order was successfully created.'
    else
      render restaurant_meals_path(@order_list.meal.restaurant), status: :unprocessable_entity
    end
  end

  def edit
    @order_list = OrderList.find(params[:id])
  end

  def update
    @order_list = OrderList.find(params[:id])
    @order_list.update
    redirect_to orders_path(@order)
  end

  private

  def order_list_params
    params.require(:order_list).permit(:meal_id, :cart_id)
  end
end
