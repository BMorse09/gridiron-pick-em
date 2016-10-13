class Prediction < ActiveRecord::Base
  belongs_to :user, inverse_of: :predictions
  belongs_to :matchup, inverse_of: :predictions
  validates_uniqueness_of :user_id, :scope => :matchup_id
end
