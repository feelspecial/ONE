class RemoveProductIdFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :images_id, :bigint
  end
end
