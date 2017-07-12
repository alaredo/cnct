json.extract! shipping_address, :id, :address, :number, :complement, :quarter, :reference, :city, :state, :country_id, :zip_code, :recipient_name, :created_at, :updated_at
json.url shipping_address_url(shipping_address, format: :json)
