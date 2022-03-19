class CreateMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.string :brand_name
      t.string :generic_name
      t.string :dosage_form
      t.decimal :cost

      t.timestamps
    end
  end
end
