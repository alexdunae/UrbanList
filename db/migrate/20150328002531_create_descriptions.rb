class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.references :list, index: true
      t.string :name
      t.string :subtitle
      t.string :subtitulo
      t.string :address
      t.text :detail
      t.text :detalhe
      t.integer :priceRange

      t.timestamps null: false
    end
    add_foreign_key :descriptions, :lists
  end
end
