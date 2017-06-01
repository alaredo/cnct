class AddVideo1ToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :video1, :string
  end
end
