class PetListing < ApplicationRecord
  belongs_to :user

  has_one :species
  has_one :user

  has_many :messages
  has_many :favourites

end
