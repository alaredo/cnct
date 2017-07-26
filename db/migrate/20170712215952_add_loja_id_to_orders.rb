class AddLojaIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :loja, index: true
  end
end
