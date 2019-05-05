class AddLandToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :land, :integer, default: 0
  end
end
