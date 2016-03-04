class CreateCallbacks < ActiveRecord::Migration
  def change
    create_table :callbacks do |t|
      t.string :civilite
      t.string :nom
      t.string :prenom
      t.integer :phone
      t.string :email
      t.time :time

      t.timestamps null: false
    end
  end
end
