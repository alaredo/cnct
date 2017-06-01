class CreateUsersEmpresas < ActiveRecord::Migration
  def change
    create_table :users_empresas do |t|
      t.references :user, index: true
      t.references :empresa, index: true
      t.datetime :dtCriacao

      t.timestamps
    end
  end
end
