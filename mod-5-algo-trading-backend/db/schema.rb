
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

ActiveRecord::Schema.define(version: 20180605141633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "username", null: false
    t.string "password_digest", null: false
    t.string "email", null: false
    t.decimal "cash_deposited"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "algorithms", force: :cascade do |t|
    t.string "name"
    t.integer "account_id"
    t.boolean "active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "account_id"
    t.decimal "quantity"
    t.decimal "price"
    t.boolean "limit"
    t.string "trading_pair"
    t.integer "usd_id"
    t.integer "position_id"
    t.string "buy_or_sell"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end