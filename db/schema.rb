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

ActiveRecord::Schema.define(version: 2019_05_26_204408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "activity_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "activity"
  end

  create_table "activity_memories", force: :cascade do |t|
    t.text "activity_status"
    t.datetime "activity_start_time"
    t.datetime "activity_end_time"
    t.text "activity_source"
    t.bigint "activity_id"
    t.bigint "memory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "activity_description"
    t.string "activity_type"
    t.string "activity_name"
    t.index ["activity_id"], name: "index_activity_memories_on_activity_id"
    t.index ["memory_id"], name: "index_activity_memories_on_memory_id"
  end

  create_table "emotion_memories", force: :cascade do |t|
    t.integer "intensity"
    t.bigint "emotion_id"
    t.bigint "memory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pleasure"
    t.boolean "default_intensity_value"
    t.boolean "default_pleasure_value"
    t.integer "stress_level"
    t.integer "anxiety_level"
    t.text "reason"
    t.index ["emotion_id"], name: "index_emotion_memories_on_emotion_id"
    t.index ["memory_id"], name: "index_emotion_memories_on_memory_id"
  end

  create_table "emotions", force: :cascade do |t|
    t.text "emotion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "valence"
    t.integer "activation"
    t.integer "scientific_valence"
    t.integer "scientific_activation"
  end

  create_table "memories", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "default_stress_level_value"
    t.boolean "default_anxiety_level_value"
    t.datetime "time_of_memory"
    t.index ["user_id"], name: "index_memories_on_user_id"
  end

  create_table "thought_memories", force: :cascade do |t|
    t.text "thought_content"
    t.bigint "thought_id"
    t.bigint "memory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "thought_type"
    t.text "time_orientation"
    t.text "thought_object"
    t.text "topic"
    t.text "automatic_thought"
    t.text "rational_thought"
    t.text "cognitive_bias"
    t.index ["memory_id"], name: "index_thought_memories_on_memory_id"
    t.index ["thought_id"], name: "index_thought_memories_on_thought_id"
  end

  create_table "thoughts", force: :cascade do |t|
    t.string "thought_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "activity_memories", "activities"
  add_foreign_key "activity_memories", "memories"
  add_foreign_key "emotion_memories", "emotions"
  add_foreign_key "emotion_memories", "memories"
  add_foreign_key "memories", "users"
  add_foreign_key "thought_memories", "memories"
  add_foreign_key "thought_memories", "thoughts"
end
