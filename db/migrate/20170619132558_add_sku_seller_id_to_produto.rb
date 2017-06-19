class AddSkuSellerIdToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :sku_seller_id, :string
  end
end
