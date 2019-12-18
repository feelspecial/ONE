class RemovePlaceIdsFromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :place_id, :bigint
  end
end
