class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :title
      t.text :description
      t.text :image
      t.string :name
      t.integer :land, :integer, default: 0

      t.timestamps
    end
  end
end
