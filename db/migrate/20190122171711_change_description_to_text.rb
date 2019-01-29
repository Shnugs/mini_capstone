class ChangeDescriptionToText < ActiveRecord::Migration[5.2]
  def change
    change_column :magic_cards, :description, :text
  end
end
