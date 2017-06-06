class CreateMarketEmpresas < ActiveRecord::Migration
  def change
    create_table :market_empresas do |t|
      t.references :marketPlace, index: true
      t.references :empresa, index: true
      t.string :url
      t.string :user
      t.string :password
      t.string :token
      t.integer :intervaloEstoque
      t.integer :intervaloPedidos

      t.timestamps
    end
  end
end
