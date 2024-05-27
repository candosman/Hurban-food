class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @orders = Order.all
  end

  def show
    @orders = Order.find(params[:id])
  end
end
