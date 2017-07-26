class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.string :controlPoint
      t.string :description
      t.datetime :occurredAt
      t.string :url
      t.string :number
      t.string :sellerDeliveryId
      t.string :cte
      t.references :carrier, index: true
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
