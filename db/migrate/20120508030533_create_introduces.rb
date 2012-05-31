class CreateIntroduces < ActiveRecord::Migration
  def change
    create_table :introduces do |t|
      t.string :title
      t.text :summary
      t.text :content
      t.string :image
      t.string :author

      t.timestamps
    end
  end
end
