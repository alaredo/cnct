json.extract! order_item, :id, :sku_seller_id, :name, :sale_price, :decimal, :sent, :freight_id, :giftWrap_id, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
