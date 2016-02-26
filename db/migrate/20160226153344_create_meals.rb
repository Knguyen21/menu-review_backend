class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :meal_type
      t.string :name
      t.string :desc
      t.decimal :price, :precision => 5, :scale => 2

      t.timestamps null: false
    end
  end
end
