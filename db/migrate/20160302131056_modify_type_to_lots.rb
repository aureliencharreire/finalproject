class ModifyTypeToLots < ActiveRecord::Migration
  def change
      rename_column :lots, :type, :genre
  end
end
