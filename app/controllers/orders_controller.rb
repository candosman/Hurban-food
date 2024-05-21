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
    @order.save
    redirect_to orders_path(@order)

  end

  def edit
    @order = Order.find(params[:id])

  end

  def update
    @order = Order.find(params[:id])
    @order.update
    redirect_to orders_path(@order)
  end
end
