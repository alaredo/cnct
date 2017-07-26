class RemoveFieldSellerIdFromOrders < ActiveRecord::Migration
  def change
    remove_reference :orders, :seller, index: true
  end
end
