class ChangePriceDataType < ActiveRecord::Migration[5.2]
  def change
    change_column :magic_cards, :price, "numeric USING CAST(price AS numeric)"
    change_column :magic_cards, :price, :decimal, precision: 10, scale: 2
    add_column :magic_cards, :in_stock, :boolean, default: true
  end
end
