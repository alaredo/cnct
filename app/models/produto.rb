class Produto < ActiveRecord::Base
  belongs_to :empresa
  has_many :produto_market_place
end
