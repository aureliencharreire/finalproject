class AddRegionIdToPrograms < ActiveRecord::Migration
  def change
      add_column :programs, :region_id, :integer
      remove_column :programs, :region
  end
end
