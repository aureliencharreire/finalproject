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

ActiveRecord::Schema.define(version: 20160303142710) do

  create_table "callbacks", force: :cascade do |t|
    t.string   "civilite",   limit: 255
    t.string   "nom",        limit: 255
    t.string   "prenom",     limit: 255
    t.integer  "phone",      limit: 4
    t.string   "email",      limit: 255
    t.time     "time"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "civilite",   limit: 255
    t.string   "nom",        limit: 255
    t.string   "prenom",     limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "name",        limit: 255
    t.integer  "region_code", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "lots", force: :cascade do |t|
    t.string   "number",     limit: 255
    t.string   "genre",      limit: 255
    t.string   "typo",       limit: 255
    t.float    "surface",    limit: 24
    t.integer  "parking",    limit: 4
    t.integer  "cave",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "program_id", limit: 4
  end

  create_table "newsletters", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "city",             limit: 255
    t.string   "adress",           limit: 255
    t.date     "delivery"
    t.text     "bref",             limit: 65535
    t.text     "strongpoints",     limit: 65535
    t.text     "citydesc",         limit: 65535
    t.text     "areadesc",         limit: 65535
    t.text     "proximity",        limit: 65535
    t.integer  "tva",              limit: 4
    t.boolean  "immediatDelivery"
    t.boolean  "new"
    t.integer  "pricedisplay",     limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "region_id",        limit: 4
    t.integer  "department_id",    limit: 4
    t.string   "name",             limit: 255
  end

  create_table "regions", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
