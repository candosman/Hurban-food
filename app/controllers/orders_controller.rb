class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @hide_nav_bar = true
    @orders = Order.where(user: current_user).order(created_at: :desc)
    @hide_footer = true
  end

  def show

    @order = Order.find(params[:id])
    @meals = @order.meals
    @user = @order.user
  end
end
