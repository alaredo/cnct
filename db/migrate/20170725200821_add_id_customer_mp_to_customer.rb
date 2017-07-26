class AddIdCustomerMpToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :idCustomerMP, :string
  end
end
