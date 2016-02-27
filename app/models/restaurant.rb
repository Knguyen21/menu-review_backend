class Restaurant < ActiveRecord::Base
  has_many :meals,
          inverse_of: :restaurant,
          foreign_key: 'restaurant_id'
end
