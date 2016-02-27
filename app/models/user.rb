  #
  class User < ActiveRecord::Base
    include Authentication
    has_many :reviews, inverse_of: :user
  end
