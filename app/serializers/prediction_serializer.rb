class PredictionSerializer < ActiveModel::Serializer
  attributes :id, :user, :matchup, :pick
  # belongs_to :user
  # belongs_to :matchup
end
