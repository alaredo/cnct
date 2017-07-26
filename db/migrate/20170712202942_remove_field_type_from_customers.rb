class RemoveFieldTypeFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :type, :string
  end
end
