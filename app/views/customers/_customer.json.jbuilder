json.extract! customer, :id, :name, :document_number, :type, :gender, :create_at, :email, :birth_date, :created_at, :updated_at
json.url customer_url(customer, format: :json)
