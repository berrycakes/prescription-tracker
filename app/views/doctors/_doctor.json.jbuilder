json.extract! doctor, :id, :first_name, :last_name, :license_number, :specialization, :clinic_name, :clinic_address, :contact, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
