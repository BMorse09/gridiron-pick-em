class Matchup < ActiveRecord::Base
  has_many :users, through: :predictions
  has_many :predictions
end
