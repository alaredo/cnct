class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.references :MarketPlace, index: true
      t.string :code
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
