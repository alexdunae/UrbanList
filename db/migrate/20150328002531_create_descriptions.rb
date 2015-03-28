class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.references :list, index: true
      t.string :name
      t.text :detail
      t.integer :rating

      t.timestamps null: false
    end
    add_foreign_key :descriptions, :lists
  end
end
