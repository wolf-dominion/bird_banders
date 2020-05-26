# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_26_171814) do

  create_table "bird_captures", force: :cascade do |t|
    t.integer "bird_id", null: false
    t.integer "capture_id", null: false
    t.integer "membership_id"
    t.index ["bird_id"], name: "index_bird_captures_on_bird_id"
    t.index ["capture_id"], name: "index_bird_captures_on_capture_id"
    t.index ["membership_id"], name: "index_bird_captures_on_membership_id"
  end

  create_table "birds", force: :cascade do |t|
    t.string "bandId"
    t.string "species"
  end

  create_table "captures", force: :cascade do |t|
    t.string "gender"
    t.string "age"
    t.string "location"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "research_group_id", null: false
    t.index ["research_group_id"], name: "index_memberships_on_research_group_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "controller"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "research_groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "bird_captures", "birds"
  add_foreign_key "bird_captures", "captures"
  add_foreign_key "bird_captures", "memberships"
  add_foreign_key "memberships", "research_groups"
  add_foreign_key "memberships", "users"
end
