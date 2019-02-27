json.extract! booking, :id, :name, :time_slot, :created_at, :updated_at
json.url booking_url(booking, format: :json)
