class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :difficulty
      t.string :ingredients
      t.string :method
      t.integer :serves

      t.timestamps
    end
  end
end
