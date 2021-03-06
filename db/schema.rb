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

ActiveRecord::Schema.define(version: 2019_01_03_035656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reports", force: :cascade do |t|
    t.integer "user_id"
    t.string "status"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_item_comment_photos", force: :cascade do |t|
    t.bigint "room_item_comment_id"
    t.text "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_item_comment_id"], name: "index_room_item_comment_photos_on_room_item_comment_id"
  end

  create_table "room_item_comments", force: :cascade do |t|
    t.bigint "room_item_id"
    t.string "name"
    t.text "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_item_id"], name: "index_room_item_comments_on_room_item_id"
  end

  create_table "room_items", force: :cascade do |t|
    t.bigint "room_id"
    t.string "name"
    t.text "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_room_items_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "report_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_rooms_on_report_id"
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

  add_foreign_key "room_item_comment_photos", "room_item_comments"
  add_foreign_key "room_item_comments", "room_items"
  add_foreign_key "room_items", "rooms"
  add_foreign_key "rooms", "reports"
end
