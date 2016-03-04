class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :code
      t.string :name
      t.integer :region_code

      t.timestamps null: false
    end
  end
end
