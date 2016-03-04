class AddDepartmentIdToDepartments < ActiveRecord::Migration
  def change
      add_column :programs, :departement_id, :integer
      remove_column :programs, :departement
      remove_column :departments, :departement_id
  end
end
