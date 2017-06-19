class AddGtinToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :gtin, :string
  end
end
