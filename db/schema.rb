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

ActiveRecord::Schema.define(version: 20140609115734) do

  create_table "filer_comments", force: true do |t|
    t.string   "body"
    t.integer  "source_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.string   "dialog"
    t.integer  "question_id"
  end

  add_index "filer_comments", ["question_id"], name: "index_filer_comments_on_question_id"

  create_table "filer_months", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "filer_sources", force: true do |t|
    t.string   "name"
    t.string   "note"
    t.string   "document"
    t.integer  "month_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people_users", force: true do |t|
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

  add_index "people_users", ["email"], name: "index_people_users_on_email", unique: true
  add_index "people_users", ["reset_password_token"], name: "index_people_users_on_reset_password_token", unique: true

end
