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

ActiveRecord::Schema.define(version: 20160911124757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachment_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attachments", force: :cascade do |t|
    t.text     "url"
    t.integer  "attraction_id"
    t.integer  "attraction_detail_id"
    t.integer  "attachment_type_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "attachments", ["attachment_type_id"], name: "index_attachments_on_attachment_type_id", using: :btree
  add_index "attachments", ["attraction_detail_id"], name: "index_attachments_on_attraction_detail_id", using: :btree
  add_index "attachments", ["attraction_id"], name: "index_attachments_on_attraction_id", using: :btree

  create_table "attraction_details", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "attraction_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "attraction_details", ["attraction_id"], name: "index_attraction_details_on_attraction_id", using: :btree

  create_table "attractions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "trans_info"
    t.text     "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "tour_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "attractions", ["tour_id"], name: "index_attractions_on_tour_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.integer  "tour_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "libraries", ["tour_id"], name: "index_libraries_on_tour_id", using: :btree
  add_index "libraries", ["user_id"], name: "index_libraries_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.float    "score"
    t.integer  "tour_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["tour_id"], name: "index_reviews_on_tour_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "tours", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "city_id"
    t.float    "price"
    t.integer  "user_id"
    t.string   "estimated_time"
    t.boolean  "is_trans_included"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "tours", ["city_id"], name: "index_tours_on_city_id", using: :btree
  add_index "tours", ["user_id"], name: "index_tours_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  add_foreign_key "attachments", "attachment_types"
  add_foreign_key "attachments", "attraction_details"
  add_foreign_key "attachments", "attractions"
  add_foreign_key "attraction_details", "attractions"
  add_foreign_key "attractions", "tours"
  add_foreign_key "cities", "countries"
  add_foreign_key "libraries", "tours"
  add_foreign_key "libraries", "users"
  add_foreign_key "reviews", "tours"
  add_foreign_key "reviews", "users"
  add_foreign_key "tours", "cities"
  add_foreign_key "tours", "users"
end
