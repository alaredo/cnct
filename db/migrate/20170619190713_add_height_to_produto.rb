class AddHeightToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :height, :string
  end
end
