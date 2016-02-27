class AddRestaurantRefToMeal < ActiveRecord::Migration
  def change
    add_reference :meals, :restaurant, index: true, foreign_key: true
  end
end
