class PetListingLike < ApplicationRecord
  belongs_to :pet_listing
  belongs_to :like
end
