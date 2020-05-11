class PetListing < ApplicationRecord
  belongs_to :species
  has_one :species
  belongs_to :user
end
