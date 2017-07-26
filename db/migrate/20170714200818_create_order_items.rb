class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :sku_seller_id
      t.string :name
      t.string :sale_price
      t.string :decimal
      t.boolean :sent
      t.references :freight, index: true
      t.references :giftWrap, index: true

      t.timestamps
    end
  end
end
