class ModyfySearchTypo < ActiveRecord::Migration
  def change
      rename_column :searches, :genre, :typo
  end
end
