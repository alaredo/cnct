json.extract! freight, :id, :actual_amount, :charged_amount, :transit_time, :cross_docking_time, :additional_info, :type, :schedule_at, :schedule_period, :created_at, :updated_at
json.url freight_url(freight, format: :json)
