class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :pet_listing
end
