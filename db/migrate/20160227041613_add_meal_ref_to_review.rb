class AddMealRefToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :meal, index: true, foreign_key: true
  end
end
