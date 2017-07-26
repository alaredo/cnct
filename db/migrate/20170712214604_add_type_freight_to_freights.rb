class AddTypeFreightToFreights < ActiveRecord::Migration
  def change
    add_column :freights, :typeFreight, :string
  end
end
