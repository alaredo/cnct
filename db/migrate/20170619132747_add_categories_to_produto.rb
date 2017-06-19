class AddCategoriesToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :categories, :string
  end
end
