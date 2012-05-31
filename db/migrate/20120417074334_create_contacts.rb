class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :title
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
