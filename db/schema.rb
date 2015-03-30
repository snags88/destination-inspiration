# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150330222510) do

  create_table "attractions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "attraction_type"
    t.float    "fee"
    t.text     "fee_detail"
    t.integer  "location_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "currency_id"
  end

  add_index "attractions", ["currency_id"], name: "index_attractions_on_currency_id"
  add_index "attractions", ["location_id"], name: "index_attractions_on_location_id"

  create_table "currencies", force: :cascade do |t|
    t.string   "name"
    t.string   "symbol"
    t.float    "conversion_rate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "currency_locations", force: :cascade do |t|
    t.integer  "currency_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "currency_locations", ["currency_id"], name: "index_currency_locations_on_currency_id"
  add_index "currency_locations", ["location_id"], name: "index_currency_locations_on_location_id"

  create_table "images", force: :cascade do |t|
    t.text     "url"
    t.text     "source"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image_type"
    t.text     "caption"
  end

  add_index "images", ["location_id"], name: "index_images_on_location_id"

  create_table "language_locations", force: :cascade do |t|
    t.integer  "language_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "language_locations", ["language_id"], name: "index_language_locations_on_language_id"
  add_index "language_locations", ["location_id"], name: "index_language_locations_on_location_id"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "city"
    t.string   "country"
    t.string   "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "lodgings", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "nightly_cost"
    t.integer  "capacity"
    t.string   "lodging_type"
    t.text     "booking_url"
    t.integer  "currency_id"
    t.integer  "location_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "lodgings", ["currency_id"], name: "index_lodgings_on_currency_id"
  add_index "lodgings", ["location_id"], name: "index_lodgings_on_location_id"

end
