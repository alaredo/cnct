class AddWeightToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :weight, :string
  end
end
