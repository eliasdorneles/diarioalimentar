class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.references :user
      t.references :meal_type
      t.integer :rating
      t.string :comments

      t.timestamps
    end
    add_index :meals, :user_id
    add_index :meals, :meal_type_id
  end
end
