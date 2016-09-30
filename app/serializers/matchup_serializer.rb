class MatchupSerializer < ActiveModel::Serializer
  attributes :id, :home, :away, :week
end
