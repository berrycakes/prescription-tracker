class AddCategoryToMedicines < ActiveRecord::Migration[6.1]
  def change
    add_column :medicines, :category, :string
  end
end
