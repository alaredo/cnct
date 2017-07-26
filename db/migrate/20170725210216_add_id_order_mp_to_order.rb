class AddIdOrderMpToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :idOrderMP, :string
  end
end
