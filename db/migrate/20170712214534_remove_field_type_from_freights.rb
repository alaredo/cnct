class RemoveFieldTypeFromFreights < ActiveRecord::Migration
  def change
    remove_column :freights, :type, :string
  end
end
