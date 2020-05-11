class CreatePetListings < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_listings do |t|
      t.string :title
      t.references :species, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
