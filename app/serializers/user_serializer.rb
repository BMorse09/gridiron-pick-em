class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :predictions
  has_many :predictions
  # has_many :matchups
end
