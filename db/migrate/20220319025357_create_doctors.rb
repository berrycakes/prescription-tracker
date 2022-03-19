class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :license_number
      t.string :specialization
      t.string :clinic_name
      t.string :clinic_address
      t.string :contact

      t.timestamps
    end
  end
end
