class CreateProdutoMarketPlaces < ActiveRecord::Migration
  def change
    create_table :produto_market_places do |t|
      t.references :produto, index: true
      t.references :marketEmpresa, index: true
      t.decimal :valorDe
      t.decimal :valorPor
      t.string :status

      t.timestamps
    end
  end
end
