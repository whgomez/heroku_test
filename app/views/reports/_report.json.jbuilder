json.extract! report, :id, :mail, :date, :observation, :coordinate, :created_at, :updated_at
json.url report_url(report, format: :json)
