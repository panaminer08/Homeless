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

ActiveRecord::Schema.define(version: 2018_10_27_213351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contributor_shelters", force: :cascade do |t|
    t.text "contribution"
    t.bigint "shelters_id"
    t.bigint "contributors_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contributors_id"], name: "index_contributor_shelters_on_contributors_id"
    t.index ["shelters_id"], name: "index_contributor_shelters_on_shelters_id"
  end

  create_table "contributors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "contributor_shelters_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contributor_shelters_id"], name: "index_contributors_on_contributor_shelters_id"
    t.index ["email"], name: "index_contributors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_contributors_on_reset_password_token", unique: true
  end

  create_table "ideas_for_homelesses", force: :cascade do |t|
    t.bigint "contributors_id"
    t.text "ideas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contributors_id"], name: "index_ideas_for_homelesses_on_contributors_id"
  end

  create_table "personal_stories", force: :cascade do |t|
    t.text "story"
    t.bigint "contributors_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contributors_id"], name: "index_personal_stories_on_contributors_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.bigint "contributor_shelters_id"
    t.string "name"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contributor_shelters_id"], name: "index_shelters_on_contributor_shelters_id"
  end

end
