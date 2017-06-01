class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.belongs_to :empresa, index: true
      t.text :descricao
      t.float :valor
      t.integer :saldo

      t.timestamps
    end
  end
end
