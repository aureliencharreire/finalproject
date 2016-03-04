class AddProgramIdToLot < ActiveRecord::Migration
  def change
      add_column :lots, :program_id, :integer
  end
end
