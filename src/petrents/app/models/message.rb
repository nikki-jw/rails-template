class Message < ApplicationRecord
  belongs_to :user
  belongs_to :pet_listing
  
  has_one :user
  has_one :pet_listing
end
