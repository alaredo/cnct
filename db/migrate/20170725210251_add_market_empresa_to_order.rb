class AddMarketEmpresaToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :MarketEmpresa, index: true
  end
end
