class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.decimal :amount
      t.string :type
      t.references :orderItem, index: true

      t.timestamps
    end
  end
end
