class AddWidthToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :width, :string
  end
end
