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

ActiveRecord::Schema.define(version: 20131029134800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.integer  "answer_value"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "answer_text"
    t.integer  "wheel_id"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree
  add_index "answers", ["wheel_id"], name: "index_answers_on_wheel_id", using: :btree

  create_table "answers_wheels", force: true do |t|
    t.integer "answer_id"
    t.integer "wheel_id"
  end

  add_index "answers_wheels", ["answer_id"], name: "index_answers_wheels_on_answer_id", using: :btree
  add_index "answers_wheels", ["wheel_id"], name: "index_answers_wheels_on_wheel_id", using: :btree

  create_table "questions", force: true do |t|
    t.text     "question"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["section_id"], name: "index_questions_on_section_id", using: :btree

  create_table "sections", force: true do |t|
    t.text     "section_name"
    t.integer  "wheel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["wheel_id"], name: "index_sections_on_wheel_id", using: :btree

  create_table "selections", force: true do |t|
    t.integer  "answer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "selections", ["user_id"], name: "index_selections_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wheels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

end
