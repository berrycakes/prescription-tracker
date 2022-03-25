class AddIsFavoriteToMedicine < ActiveRecord::Migration[6.1]
  def change
    add_column :medicines, :is_favorite, :boolean
  end
end
