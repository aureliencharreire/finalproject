class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :number
      t.string :type
      t.string :typo
      t.float :surface
      t.integer :parking
      t.integer :cave

      t.timestamps null: false
    end
  end
end
