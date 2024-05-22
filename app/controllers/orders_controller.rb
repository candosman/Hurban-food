class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create

    @order = Order.new(order_params)
    @order.user = current_user

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update
    redirect_to orders_path(@order)
  end

  private

  def order_params
    params.require(:order).permit(:amount)
  end
end
