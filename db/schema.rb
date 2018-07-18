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

ActiveRecord::Schema.define(version: 20180712211912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conventions", force: :cascade do |t|
    t.string   "convention"
    t.string   "description"
    t.binary   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "points", force: :cascade do |t|
    t.float    "coordinate"
    t.string   "convention"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string   "mail"
    t.date     "date"
    t.string   "observation"
    t.float    "coordinate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "visitors_id"
    t.integer  "points_id"
    t.index ["points_id"], name: "index_reports_on_points_id", using: :btree
    t.index ["visitors_id"], name: "index_reports_on_visitors_id", using: :btree
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "visitors", force: :cascade do |t|
    t.string   "mail"
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reports", "points", column: "points_id"
  add_foreign_key "reports", "visitors", column: "visitors_id"
end
