class DashboardController < ApplicationController
  before_action :hide, only: %i[my_dashboard create_orders]

  def my_dashboard


  end

  def create_orders

  end

  def my_orders

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
