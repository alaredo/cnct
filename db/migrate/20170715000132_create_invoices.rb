class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :cnpj
      t.string :number
      t.string :serie
      t.datetime :issuedAt
      t.string :accessKey
      t.string :linkXml
      t.string :linkDanfe

      t.timestamps
    end
  end
end
