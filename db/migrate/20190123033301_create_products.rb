class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.text :description
      t.boolean :in_stock

      t.timestamps
    end
  end
end
