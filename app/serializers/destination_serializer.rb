class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :hotel, :restaurant, :name, :attractions
  has_many :itineraries
  has_many :users, through: :itineraries
end
