class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :destination_id, :notes, :date
  belongs_to :user
  belongs_to :destination
end
