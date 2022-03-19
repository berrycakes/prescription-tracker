class CreatePrescribedMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :prescribed_medicines do |t|
      t.string :brand_name
      t.string :generic_name
      t.integer :quantity
      t.references :prescription, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
