class AddValorOfertaToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :valorOferta, :decimal
  end
end
