json.extract! event, :id, :name, :start_time, :place, :check, :created_at, :updated_at
json.url event_url(event, format: :json)
