class PredictionSerializer < ActiveModel::Serializer
  attributes :id, :pred, :outcome
  has_one :user
  belongs_to :Matchup
end
