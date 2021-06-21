# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_21_184106) do

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "message_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_id"], name: "index_comments_on_message_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "topic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "likes"
    t.index ["topic_id"], name: "index_messages_on_topic_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "likes"
    t.integer "dislikes"
    t.integer "mehs"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.integer "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_topics_on_room_id"
  end

  add_foreign_key "comments", "messages"
  add_foreign_key "messages", "topics"
  add_foreign_key "topics", "rooms"
end
