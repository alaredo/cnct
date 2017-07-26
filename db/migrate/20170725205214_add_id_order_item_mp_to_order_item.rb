class AddIdOrderItemMpToOrderItem < ActiveRecord::Migration
  def change
    add_column :order_items, :idOrderItemMP, :string
  end
end
