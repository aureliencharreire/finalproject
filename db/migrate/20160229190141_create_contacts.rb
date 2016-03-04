class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :civilite
      t.string :nom
      t.string :prenom
      t.string :email
      t.text :message

      t.timestamps null: false
    end
  end
end
