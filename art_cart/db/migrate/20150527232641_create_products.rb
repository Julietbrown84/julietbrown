class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.price :float
      t.description :text
      t.image_url :string
      t.inventory :integer

      t.timestamps null: false
    end
  end
end
