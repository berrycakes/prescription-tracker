class RemoveBrandNameFromPrescribedMedicines < ActiveRecord::Migration[6.1]
  def change
    remove_column :prescribed_medicines, :brand_name
  end
end
