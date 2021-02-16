class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :address, :phone, :email
  has_many :itineraries
  has_many :destinations,  through: :itineraries
end
