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

ActiveRecord::Schema.define(version: 20160830012153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alls", force: :cascade do |t|
    t.binary   "one"
    t.boolean  "two"
    t.date     "three"
    t.datetime "four"
    t.decimal  "five"
    t.float    "six"
    t.integer  "seven"
    t.integer  "listing_id"
    t.string   "nine"
    t.text     "ten"
    t.time     "eleven"
    t.datetime "twelve"
    t.json     "fourteen"
    t.macaddr  "nineteen"
    t.string   "thirteen"
    t.string   "fifteen"
    t.string   "sixteen"
    t.string   "seventeen"
    t.string   "eighteen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "alls", ["listing_id"], name: "index_alls_on_listing_id", using: :btree

  create_table "buildings", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alls", "listings"
end
