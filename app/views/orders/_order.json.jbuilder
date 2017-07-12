json.extract! order, :id, :order_site_id, :site, :payment_type, :purcharsed_at, :updated_at, :status, :total_amount, :total_discount_amount, :customer_id, :seller_id, :billingAddress_id, :shippingAddress_id, :freight_id, :created_at, :updated_at
json.url order_url(order, format: :json)
