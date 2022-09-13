# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_11_112721) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "phone"
    t.string "genres"
    t.string "facebook_link"
    t.string "image_link"
    t.string "website_link"
    t.boolean "looking_for_venues"
    t.text "seeking_description"
  end

  create_table "shows", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "venue_id"
    t.datetime "start_time"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "address"
    t.string "phone"
    t.string "genres"
    t.string "facebook_link"
    t.string "image_link"
    t.string "website_link"
    t.boolean "looking_for_venues"
    t.text "seeking_description"
  end

end
