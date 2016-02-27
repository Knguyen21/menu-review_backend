class Review < ActiveRecord::Base
  belongs_to :meal, inverse_of: :reviews
  belongs_to :user, inverse_of: :reviews
  has_one :restaurant, through: :meal
end
