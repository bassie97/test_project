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

ActiveRecord::Schema.define(version: 20151120150241) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "contact_id",   limit: 4
    t.string   "country",      limit: 255
    t.string   "city",         limit: 255
    t.string   "street",       limit: 255
    t.integer  "house_number", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "address_kind", limit: 255
  end

  add_index "addresses", ["contact_id"], name: "addresses_contacts__fk", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "house_phone",   limit: 255
    t.string   "email",         limit: 255
    t.string   "avatar",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "mobile_phone",  limit: 255
    t.date     "date_of_birth"
  end

end
