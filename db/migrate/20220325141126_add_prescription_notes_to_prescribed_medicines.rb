class AddPrescriptionNotesToPrescribedMedicines < ActiveRecord::Migration[6.1]
  def change
    add_reference :prescribed_medicines, :prescription_notes, null: true, foreign_key: true
  end
end
