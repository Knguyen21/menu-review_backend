class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_type, :name, :desc, :price, :restaurant_id

  def price
    "%.2f" % object.price.truncate(2)
  end

end
