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

ActiveRecord::Schema.define(version: 20140716183954) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.float    "total",       default: 0.0
    t.string   "description"
    t.integer  "budget_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["budget_id"], name: "index_accounts_on_budget_id", using: :btree

  create_table "budgets", force: true do |t|
    t.string   "name"
    t.float    "value",       default: 0.0
    t.float    "total",       default: 0.0
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: true do |t|
    t.float    "value"
    t.date     "date"
    t.string   "description"
    t.integer  "subaccount_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["subaccount_id"], name: "index_entries_on_subaccount_id", using: :btree

  create_table "sub_accounts", force: true do |t|
    t.string   "name"
    t.float    "total"
    t.string   "description"
    t.integer  "accounts_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_accounts", ["accounts_id"], name: "index_sub_accounts_on_accounts_id", using: :btree

end
