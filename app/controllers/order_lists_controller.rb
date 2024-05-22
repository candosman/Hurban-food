class OrderListsController < ApplicationController
  def new
    @order_lists = OrderList.new
  end

  def create
    @order_list = OrderList.new(order_list_params)

    if @order_list.save
      redirect_to @order_list, notice: 'Order was successfully created.'
    else
      render :new
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
    params.require(:order).permit(:meal_id, :order_id)
  end
end
