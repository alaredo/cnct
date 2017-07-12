class CreateFreights < ActiveRecord::Migration
  def change
    create_table :freights do |t|
      t.decimal :actual_amount
      t.string :charged_amount
      t.integer :transit_time
      t.integer :cross_docking_time
      t.string :additional_info
      t.string :type
      t.datetime :schedule_at
      t.string :schedule_period

      t.timestamps
    end
  end
end
