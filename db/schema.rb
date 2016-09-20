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

ActiveRecord::Schema.define(version: 20151126194857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fabrics", force: :cascade do |t|
    t.string "name"
  end

  create_table "fabrics_projects", id: false, force: :cascade do |t|
    t.integer "project_id"
    t.integer "fabric_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "project_id"
    t.string  "name"
  end

  create_table "patterns", force: :cascade do |t|
    t.string "name"
  end

  create_table "patterns_projects", id: false, force: :cascade do |t|
    t.integer "project_id"
    t.integer "pattern_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.integer "project_id"
    t.string  "name"
  end

  create_table "project_parts", force: :cascade do |t|
    t.integer "project_id"
    t.string  "name"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "user_id"
    t.string  "name"
    t.binary  "description"
    t.boolean "future",      default: false
    t.boolean "finished",    default: false
    t.boolean "private",     default: false
    t.float   "percentage",  default: 0.0
    t.date    "due_date"
    t.date    "start_date",  default: '2016-09-18'
    t.date    "finish_date"
  end

  create_table "researches", force: :cascade do |t|
    t.integer "project_id"
    t.string  "name"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.integer "project_id"
    t.string  "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
