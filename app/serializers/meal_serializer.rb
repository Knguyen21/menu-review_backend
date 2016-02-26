class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_type, :name, :desc, :price
  "%.2f" % object.price.truncate(2)
end
