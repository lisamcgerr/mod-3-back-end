class User < ApplicationRecord
    has_many :itineraries
    has_many :destinations,  through: :itineraries
end
