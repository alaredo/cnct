class AddImagem4ToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :imagem4, :string
  end
end
