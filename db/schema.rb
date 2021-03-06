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

ActiveRecord::Schema.define(version: 20140328184546) do

  create_table "claims", force: true do |t|
    t.integer  "user_id"
    t.integer  "donation_id"
    t.string   "suggested_address"
    t.datetime "suggested_time"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "claims", ["donation_id"], name: "index_claims_on_donation_id"
  add_index "claims", ["user_id"], name: "index_claims_on_user_id"

  create_table "donations", force: true do |t|
    t.string   "title"
    t.integer  "donator_id"
    t.integer  "receiver_id"
    t.text     "description"
    t.datetime "exchange_time"
    t.string   "exchange_address"
    t.date     "expiration_date"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "received"
    t.boolean  "valid_donation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "donations", ["donator_id"], name: "index_donations_on_donator_id"
  add_index "donations", ["receiver_id"], name: "index_donations_on_receiver_id"

  create_table "items", force: true do |t|
    t.integer  "donation_id"
    t.string   "title"
    t.text     "details"
    t.string   "item_type"
    t.date     "expiration_date"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["donation_id"], name: "index_items_on_donation_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
    t.string   "name"
    t.date     "birthday"
    t.string   "address"
    t.string   "gravatar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
