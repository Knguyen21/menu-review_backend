class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_type, :name, :desc, :price, :restaurant_id, :restaurant

  def price
    "%.2f" % object.price.truncate(2)
  end

end
