json.extract! atributos_produto, :id, :produto_id, :name, :value, :created_at, :updated_at
json.url atributos_produto_url(atributos_produto, format: :json)
