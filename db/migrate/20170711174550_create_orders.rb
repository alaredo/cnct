class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_site_id
      t.string :site
      t.integer :payment_type
      t.datetime :purcharsed_at
      t.datetime :updated_at
      t.string :status
      t.decimal :total_amount
      t.decimal :total_discount_amount
      t.references :customer, index: true
      t.references :seller, index: true
      t.references :billingAddress, index: true
      t.references :shippingAddress, index: true
      t.references :freight, index: true

      t.timestamps
    end
  end
end
