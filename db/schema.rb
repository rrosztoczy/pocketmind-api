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

ActiveRecord::Schema.define(version: 2019_05_14_140856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "activity_category"
    t.string "activity_name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emotions", force: :cascade do |t|
    t.text "feeling"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "intensity"
    t.integer "valence"
  end

  create_table "memories", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "emotion_id"
    t.bigint "thought_id"
    t.bigint "physical_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_memories_on_activity_id"
    t.index ["emotion_id"], name: "index_memories_on_emotion_id"
    t.index ["physical_id"], name: "index_memories_on_physical_id"
    t.index ["thought_id"], name: "index_memories_on_thought_id"
    t.index ["user_id"], name: "index_memories_on_user_id"
  end

  create_table "physicals", force: :cascade do |t|
    t.integer "stress_level"
    t.string "physical_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thoughts", force: :cascade do |t|
    t.string "thought_category"
    t.string "thought"
    t.string "bias"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "memories", "activities"
  add_foreign_key "memories", "emotions"
  add_foreign_key "memories", "physicals"
  add_foreign_key "memories", "thoughts"
  add_foreign_key "memories", "users"
end
