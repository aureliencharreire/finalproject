class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.integer :program_id
      t.boolean :carroussel

      t.timestamps null: false
    end
  end
end
