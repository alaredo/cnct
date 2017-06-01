json.extract! produto, :id, :empresa_id, :descricao, :valor, :saldo, :created_at, :updated_at
json.url produto_url(produto, format: :json)
