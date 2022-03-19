json.extract! prescribed_medicine, :id, :brand_name, :generic_name, :quantity, :prescription_id, :medicine_id, :created_at, :updated_at
json.url prescribed_medicine_url(prescribed_medicine, format: :json)
