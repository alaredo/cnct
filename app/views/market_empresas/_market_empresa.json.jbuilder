json.extract! market_empresa, :id, :marketPlace_id, :empresa_id, :url, :user, :password, :token, :intervaloEstoque, :intervaloPedidos, :created_at, :updated_at
json.url market_empresa_url(market_empresa, format: :json)
