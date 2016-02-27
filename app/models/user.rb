  #
  class User < ActiveRecord::Base
    include Authentication
    has_many :meals, through: :reviews
    has_many :reviews#, inverse_of: :user
    has_many :restaurants, through: :meals

  end
