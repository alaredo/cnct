json.extract! empresa, :id, :login, :passwd, :name, :url, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)
