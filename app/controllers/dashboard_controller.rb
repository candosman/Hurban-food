class DashboardController < ApplicationController
  before_action :hide, only: %i[my_dashboard create_orders]

  def my_dashboard
    @meals = current_user.restaurants.map(&:meals).flatten
    @meals_sold = 0
    @revenue = 0
    @orders = []
    @meals.each do |meal|
      @order_list_number = meal.order_lists.count{ |order_list| order_list.id != nil }
      @meals_sold += @order_list_number
      @revenue += @order_list_number * meal.price
    end

    current_user.restaurants.each do |restaurant|
      @orders << Order.joins(:order_lists).where(order_lists: { meal_id: restaurant.meals.pluck(:id) }).distinct
    end
    @number_of_customers = @orders.flatten.map(&:user).uniq.count
  end

  def create_orders

  end

  def my_orders
    @hide_nav_bar = true
    @meals = current_user.restaurants.map(&:meals).flatten
    @order_lists = @meals.map(&:order_lists).uniq.flatten.reject{ |order_list| order_list.order_id.nil? }
    @orders = @order_lists.group_by(&:order_id)
    @orders = @orders.sort_by { |order_id, order_lists| order_lists.max_by(&:created_at) }.reverse.to_h
    @hide_footer = true
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
