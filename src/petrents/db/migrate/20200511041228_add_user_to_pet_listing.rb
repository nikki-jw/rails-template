class AddUserToPetListing < ActiveRecord::Migration[5.2]
  def change
    add_reference :pet_listings, :user, foreign_key: true
  end
end
