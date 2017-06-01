class AddImagem3ToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :imagem3, :string
  end
end
