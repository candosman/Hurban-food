class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @orders = Order.where(user: current_user).order(created_at: :desc)
  end

  def show
    @hide_nav_bar = true
    @hide_footer = true
    @order = Order.find(params[:id])
    @meals = @order.meals
    @user = @order.user
  end

  def mark_as_delivered
    @order = Order.find(params[:id])
    @order.delivered_status = true
    @order.save
    redirect_to my_orders_path
  end
end
