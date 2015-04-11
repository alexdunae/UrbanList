class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :city, index: true
      t.string :name
      t.string :nome
      t.string :image_url

      t.timestamps null: false
    end
    add_foreign_key :lists, :cities
  end
end
