class CreateGiftWraps < ActiveRecord::Migration
  def change
    create_table :gift_wraps do |t|
      t.boolean :available
      t.decimal :value
      t.boolean :message_support

      t.timestamps
    end
  end
end
