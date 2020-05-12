class Species < ApplicationRecord
    belongs_to :pet_listing

    has_many :pet_listings
end