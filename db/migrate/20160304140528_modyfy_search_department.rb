class ModyfySearchDepartment < ActiveRecord::Migration
  def change
      rename_column :searches, :departement, :department
  end
end
