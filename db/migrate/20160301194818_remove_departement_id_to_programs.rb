class RemoveDepartementIdToPrograms < ActiveRecord::Migration
  def change
      remove_column :programs, :departement_id
      add_column :programs, :department_id, :integer
  end
end
