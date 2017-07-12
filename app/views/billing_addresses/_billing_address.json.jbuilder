json.extract! billing_address, :id, :address, :number, :complement, :quarter, :reference, :city, :state, :country_id, :zip_code, :created_at, :updated_at
json.url billing_address_url(billing_address, format: :json)
