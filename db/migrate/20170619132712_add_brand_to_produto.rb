class AddBrandToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :brand, :string
  end
end
