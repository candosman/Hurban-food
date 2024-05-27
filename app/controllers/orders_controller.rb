class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @orders = Order.where(user: current_user).order(created_at: :desc)
  end

  def show
    @order = Order.find(params[:id])
  end
end
