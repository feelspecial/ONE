class AddAncestryToPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :ancestry, :string
    add_index :places, :ancestry
  end
end
