class RemoveDecimalFromOrderItem < ActiveRecord::Migration
  def change
    remove_column :order_items, :decimal, :string
  end
end
