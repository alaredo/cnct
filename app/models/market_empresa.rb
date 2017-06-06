class MarketEmpresa < ActiveRecord::Base
  belongs_to :marketPlace
  belongs_to :empresa
end
