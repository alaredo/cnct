class AddLengthToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :length, :string
  end
end
