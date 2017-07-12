class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :document_number
      t.string :type
      t.string :gender
      t.datetime :create_at
      t.string :email
      t.datetime :birth_date

      t.timestamps
    end
  end
end
