class ChangeDeliveredStatusToOrders < ActiveRecord::Migration[7.1]
  def change
    change_column :orders, :delivered_status, :boolean, default: false
  end
end
