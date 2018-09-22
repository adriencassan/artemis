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

ActiveRecord::Schema.define(version: 20180922170318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "role"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_analyses", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "stock_id"
    t.string "analysis"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_stock_analyses_on_profile_id"
    t.index ["stock_id"], name: "index_stock_analyses_on_stock_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "name"
    t.string "mnemonic"
    t.integer "nb_bull"
    t.integer "nb_bear"
    t.integer "nb_neutral"
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
    t.bigint "profile_id"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["profile_id"], name: "index_users_on_profile_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "stock_analyses", "profiles"
  add_foreign_key "stock_analyses", "stocks"
  add_foreign_key "users", "profiles"
end
