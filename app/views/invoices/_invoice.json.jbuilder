json.extract! invoice, :id, :cnpj, :number, :serie, :issuedAt, :accessKey, :linkXml, :linkDanfe, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
