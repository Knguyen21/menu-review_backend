class Meal < ActiveRecord::Base
  belongs_to :restaurant, inverse_of: :meals
  has_many :reviews, inverse_of: :meal, foreign_key: 'meal_id'
end
