class AddImagem2ToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :imagem2, :string
  end
end
