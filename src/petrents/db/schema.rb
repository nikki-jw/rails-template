# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_12_020410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "city"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "dislikes", force: :cascade do |t|
    t.string "dislikes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "pet_listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_listing_id"], name: "index_favourites_on_pet_listing_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.string "likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "message"
    t.bigint "user_id"
    t.bigint "pet_listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_listing_id"], name: "index_messages_on_pet_listing_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "pet_listing_dislikes", force: :cascade do |t|
    t.bigint "pet_listing_id"
    t.bigint "dislike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dislike_id"], name: "index_pet_listing_dislikes_on_dislike_id"
    t.index ["pet_listing_id"], name: "index_pet_listing_dislikes_on_pet_listing_id"
  end

  create_table "pet_listing_likes", force: :cascade do |t|
    t.bigint "pet_listing_id"
    t.bigint "like_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["like_id"], name: "index_pet_listing_likes_on_like_id"
    t.index ["pet_listing_id"], name: "index_pet_listing_likes_on_pet_listing_id"
  end

  create_table "pet_listings", force: :cascade do |t|
    t.string "title"
    t.bigint "species_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["species_id"], name: "index_pet_listings_on_species_id"
    t.index ["user_id"], name: "index_pet_listings_on_user_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cities", "states"
  add_foreign_key "favourites", "pet_listings"
  add_foreign_key "favourites", "users"
  add_foreign_key "messages", "pet_listings"
  add_foreign_key "messages", "users"
  add_foreign_key "pet_listing_dislikes", "dislikes"
  add_foreign_key "pet_listing_dislikes", "pet_listings"
  add_foreign_key "pet_listing_likes", "likes"
  add_foreign_key "pet_listing_likes", "pet_listings"
  add_foreign_key "pet_listings", "species"
  add_foreign_key "pet_listings", "users"
end
