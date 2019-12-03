class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def up
    change_column :places, :path,:integer, null: true # null: trueを明示する必要がある
  end

  def down
    change_column :places, :path,:integer, null: false
  end
end
