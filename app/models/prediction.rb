class Prediction < ActiveRecord::Base
  belongs_to :user, inverse_of: :predictions
  belongs_to :matchup, inverse_of: :predictions
  # has_many :matchups
end
