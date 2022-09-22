class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :content
      t.integer :position

      t.timestamps
    end
  end
end
