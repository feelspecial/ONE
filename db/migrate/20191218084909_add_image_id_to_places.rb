class AddImageIdToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :image_id, :bigint,foreign_key: true
  end
end
