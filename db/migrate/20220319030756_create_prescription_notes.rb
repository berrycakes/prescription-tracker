class CreatePrescriptionNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :prescription_notes do |t|
      t.string :content
      t.references :prescription, null: false, foreign_key: true

      t.timestamps
    end
  end
end
