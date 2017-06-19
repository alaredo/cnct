class AddTitleToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :title, :string
  end
end
