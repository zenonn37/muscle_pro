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

ActiveRecord::Schema.define(version: 20140115124344) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bios", force: true do |t|
    t.string   "certs"
    t.integer  "exp"
    t.string   "history"
    t.string   "about"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "trainer_id"
  end

  create_table "staff_accounts", force: true do |t|
    t.integer  "staffid"
    t.integer  "trainer_id"
    t.string   "location"
    t.integer  "hours"
    t.decimal  "salary",         precision: 5, scale: 2
    t.decimal  "production",     precision: 5, scale: 2
    t.decimal  "weekly",         precision: 5, scale: 2
    t.decimal  "monthly",        precision: 5, scale: 2
    t.decimal  "yearly",         precision: 5, scale: 2
    t.integer  "clients"
    t.integer  "classes_total"
    t.integer  "classes_day"
    t.integer  "classes_month"
    t.integer  "classes_weekly"
    t.integer  "classes_yearly"
    t.integer  "travel_miles"
    t.string   "gyms"
    t.string   "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "staff_accounts", ["trainer_id"], name: "index_staff_accounts_on_trainer_id", using: :btree

  create_table "tclasses", force: true do |t|
    t.string   "name"
    t.string   "level"
    t.integer  "duration"
    t.integer  "mclass"
    t.date     "dclass"
    t.time     "timeclass"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "trainer_id"
  end

  add_index "tclasses", ["trainer_id"], name: "index_tclasses_on_trainer_id", using: :btree

  create_table "trainers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
