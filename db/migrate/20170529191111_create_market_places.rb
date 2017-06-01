class CreateMarketPlaces < ActiveRecord::Migration
  def change
    create_table :market_places do |t|
      t.string :nome
      t.string :url

      t.timestamps
    end
  end
end
