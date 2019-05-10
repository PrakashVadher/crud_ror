class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :short_description
      t.float :price
      t.integer :quantity
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
