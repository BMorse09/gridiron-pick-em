class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :matchups, through: :predictions
  has_many :predictions
end
