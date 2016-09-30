class MatchupSerializer < ActiveModel::Serializer
  attributes :id, :home, :away, :week, :outcome, :users, :predictions
end
