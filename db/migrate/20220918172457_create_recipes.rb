class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :description
      t.string :serving
      t.string :cooking_time

      t.timestamps
    end
  end
end
