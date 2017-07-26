json.extract! item_tracking, :id, :href, :tracking_id, :created_at, :updated_at
json.url item_tracking_url(item_tracking, format: :json)
