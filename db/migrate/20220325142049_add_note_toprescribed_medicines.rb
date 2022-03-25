class AddNoteToprescribedMedicines < ActiveRecord::Migration[6.1]
  def change
    add_column :prescribed_medicines, :note, :string
  end
end
