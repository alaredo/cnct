class AddVideo2ToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :video2, :string
  end
end
