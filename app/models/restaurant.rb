class Restaurant < ActiveRecord::Base
  has_many :reviews, through: :meals
  has_many :meals, foreign_key: 'restaurant_id'
  has_many :users, through: :reviews
end
