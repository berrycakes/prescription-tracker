class RemoveGenericNameFromPrescribedMedicines < ActiveRecord::Migration[6.1]
  def change
    remove_column :prescribed_medicines, :generic_name
  end
end
