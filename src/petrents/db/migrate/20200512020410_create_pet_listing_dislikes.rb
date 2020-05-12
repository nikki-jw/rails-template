class CreatePetListingDislikes < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_listing_dislikes do |t|
      t.references :pet_listing, foreign_key: true
      t.references :dislike, foreign_key: true

      t.timestamps
    end
  end
end
