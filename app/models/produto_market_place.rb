class ProdutoMarketPlace < ActiveRecord::Base
  belongs_to :produto
  belongs_to :marketEmpresa
end
