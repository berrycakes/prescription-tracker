json.extract! prescription_note, :id, :content, :prescription_id, :created_at, :updated_at
json.url prescription_note_url(prescription_note, format: :json)
