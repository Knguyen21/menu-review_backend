class Review < ActiveRecord::Base
  belongs_to :meal, inverse_of: :reviews
end
