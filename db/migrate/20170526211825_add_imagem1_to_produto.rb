class AddImagem1ToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :imagem1, :string
  end
end
