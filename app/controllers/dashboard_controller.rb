class DashboardController < ApplicationController
  before_action :hide, only: %i[my_dashboard create_orders]

  def my_dashboard
    @meals = current_user.restaurants.map(&:meals).flatten
    @meals_sold = 0
    @meals.each do |meal|
      @meals_sold += meal.order_lists.count
    end
  end

  def create_orders

  end

  def my_orders
    @meals = current_user.restaurants.map(&:meals).flatten
    @order_lists = @meals.map(&:order_lists).uniq.flatten.reject{ |order_list| order_list.order_id.nil? }
    @orders = @order_lists.group_by(&:order_id)
  end

  def my_favourites

  end



  private

  def hide
    @hide_nav_bar = true
    @hide_footer = true
    @display_dashboard = true
  end
end
