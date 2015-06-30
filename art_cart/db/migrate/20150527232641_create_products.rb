class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :image_url
      t.integer :inventory

      t.timestamps null: false
    end
  end
end
