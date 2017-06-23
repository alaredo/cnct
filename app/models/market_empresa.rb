class MarketEmpresa < ActiveRecord::Base
  belongs_to :marketPlace
  belongs_to :empresa
  has_many :produtoMarketPlace
end
