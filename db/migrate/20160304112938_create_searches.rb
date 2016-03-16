class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
        t.integer :departement
        t.integer :price
        t.string :genre
        t.string :city
      t.timestamps null: false
    end 
  end
end
