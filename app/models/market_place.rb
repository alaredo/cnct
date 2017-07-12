class MarketPlace < ActiveRecord::Base
  has_many :marketEmpresa
  has_many :loja
end
