json.extract! violation_report, :id, :vehicle_count, :latitude, :longitude, :created_at, :updated_at
json.url violation_report_url(violation_report, format: :json)
