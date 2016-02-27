class Meal < ActiveRecord::Base
  belongs_to :restaurant, inverse_of: :meals
end
