class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :summary
      t.text :description
      t.string :status
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end
