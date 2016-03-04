class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :region
      t.integer :departement
      t.string :city
      t.string :adress
      t.date :delivery
      t.text :bref
      t.text :strongpoints
      t.text :citydesc
      t.text :areadesc
      t.text :proximity
      t.integer :tva
      t.boolean :immediatDelivery
      t.boolean :new
      t.integer :pricedisplay

      t.timestamps null: false
    end
  end
end
