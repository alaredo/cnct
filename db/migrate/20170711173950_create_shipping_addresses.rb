class CreateShippingAddresses < ActiveRecord::Migration
  def change
    create_table :shipping_addresses do |t|
      t.string :address
      t.string :number
      t.string :complement
      t.string :quarter
      t.string :reference
      t.string :city
      t.string :state
      t.string :country_id
      t.string :zip_code
      t.string :recipient_name

      t.timestamps
    end
  end
end
