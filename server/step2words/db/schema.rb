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

ActiveRecord::Schema.define(version: 20150127061035) do

  create_table "friends", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packs", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "title_local", limit: 255
    t.string   "vender",      limit: 255
    t.string   "desc",        limit: 255
    t.string   "version",     limit: 255
    t.string   "price",       limit: 255
    t.string   "cover_url",   limit: 255
    t.string   "file_url",    limit: 255
    t.string   "cat1",        limit: 255
    t.string   "cat2",        limit: 255
    t.string   "cat3",        limit: 255
    t.string   "lang1",       limit: 255
    t.string   "lang2",       limit: 255
    t.string   "store",       limit: 255
    t.string   "israndom",    limit: 255
    t.integer  "event",       limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.string   "price",      limit: 255
    t.string   "paytype",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "scores", force: :cascade do |t|
    t.string   "highscore",  limit: 255
    t.string   "progress",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.integer  "point",      limit: 4
    t.integer  "cash",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "user_details", force: :cascade do |t|
    t.integer  "point",      limit: 4
    t.integer  "cash",       limit: 4
    t.string   "locale",     limit: 255
    t.string   "oauth",      limit: 255
    t.string   "oauthkey",   limit: 255
    t.string   "sessionid",  limit: 255
    t.string   "device",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",    limit: 4
  end

  add_index "user_details", ["user_id"], name: "index_user_details_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.string   "nickname",   limit: 255
    t.integer  "status",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
