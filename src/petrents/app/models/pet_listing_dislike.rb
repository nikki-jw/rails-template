class PetListingDislike < ApplicationRecord
  belongs_to :pet_listing
  belongs_to :dislike
end
