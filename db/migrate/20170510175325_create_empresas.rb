class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :login
      t.string :passwd
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
