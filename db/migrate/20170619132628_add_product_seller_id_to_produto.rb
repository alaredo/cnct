class AddProductSellerIdToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :product_seller_id, :string
  end
end
