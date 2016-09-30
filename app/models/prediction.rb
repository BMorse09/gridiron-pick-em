class Prediction < ActiveRecord::Base
  belongs_to :user
  has_many :matchups
end
