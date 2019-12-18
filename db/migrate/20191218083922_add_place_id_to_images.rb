class AddPlaceIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :place_id, :bigint,foreign_key: true
  end
end
