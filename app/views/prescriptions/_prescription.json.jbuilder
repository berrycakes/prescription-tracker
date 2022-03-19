json.extract! prescription, :id, :date_prescribed, :doctor_id, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
