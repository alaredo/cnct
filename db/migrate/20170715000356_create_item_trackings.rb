class CreateItemTrackings < ActiveRecord::Migration
  def change
    create_table :item_trackings do |t|
      t.string :href
      t.references :tracking, index: true

      t.timestamps
    end
  end
end
