class ChangingColumn4 < ActiveRecord::Migration[7.1]
  def change
    change_column_null :order_lists, :order_id, true
    add_column :order_lists, :order_number, :integer
  end
end
