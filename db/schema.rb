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

ActiveRecord::Schema.define(version: 20160714121821) do

  create_table "answer_longs", force: :cascade do |t|
    t.integer  "user_id_id"
    t.integer  "question_id_id"
    t.text     "answer"
    t.integer  "public_result"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "answer_longs", ["question_id_id"], name: "index_answer_longs_on_question_id_id"
  add_index "answer_longs", ["user_id_id"], name: "index_answer_longs_on_user_id_id"

  create_table "answer_shorts", force: :cascade do |t|
    t.integer  "user_id_id"
    t.integer  "question_id_id"
    t.integer  "answer"
    t.integer  "public_result"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "answer_shorts", ["question_id_id"], name: "index_answer_shorts_on_question_id_id"
  add_index "answer_shorts", ["user_id_id"], name: "index_answer_shorts_on_user_id_id"

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "wall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["wall_id"], name: "index_comments_on_wall_id"

  create_table "questions", force: :cascade do |t|
    t.string   "content"
    t.string   "selection_option"
    t.integer  "skill_area"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "walls", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "user_id",        default: 0, null: false
    t.integer  "read_authority", default: 0, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
