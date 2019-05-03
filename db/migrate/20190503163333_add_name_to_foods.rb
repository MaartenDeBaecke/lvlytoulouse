class AddNameToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :name, :string
  end
end
