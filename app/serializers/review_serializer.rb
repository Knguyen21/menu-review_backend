class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :meal_id, :user_id, :user
end
