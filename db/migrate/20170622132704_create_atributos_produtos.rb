class CreateAtributosProdutos < ActiveRecord::Migration
  def change
    create_table :atributos_produtos do |t|
      t.references :produto, index: true
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
