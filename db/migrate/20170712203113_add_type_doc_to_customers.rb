class AddTypeDocToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :typeDoc, :string
  end
end
