class CreatePetListingLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_listing_likes do |t|
      t.references :pet_listing, foreign_key: true
      t.references :like, foreign_key: true

      t.timestamps
    end
  end
end
