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

ActiveRecord::Schema.define(version: 20151122211219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "state_id"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree
  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "name",       limit: 30
    t.boolean  "status",                default: true
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "options_properties", force: :cascade do |t|
    t.integer  "option_id"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name",       limit: 30
    t.boolean  "status",                default: true
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "name",             limit: 50
    t.decimal  "area",                         precision: 15, scale: 2, default: 0.0
    t.decimal  "price",                        precision: 15, scale: 2, default: 0.0
    t.text     "description"
    t.integer  "interest"
    t.boolean  "status",                                                default: true
    t.integer  "user_id"
    t.integer  "bed_rooms"
    t.integer  "bath_rooms"
    t.string   "address",          limit: 100
    t.integer  "county_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.string   "latitude",         limit: 50
    t.string   "longitude",        limit: 50
    t.string   "video_url",        limit: 150
    t.integer  "property_type_id"
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
  end

  create_table "property_options", force: :cascade do |t|
    t.integer  "property_id"
    t.integer  "option_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "property_types", force: :cascade do |t|
    t.string   "name",       limit: 30
    t.boolean  "status",                default: true
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "cities", "countries"
  add_foreign_key "cities", "states"
  add_foreign_key "states", "countries"
end
