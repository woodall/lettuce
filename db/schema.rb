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

ActiveRecord::Schema.define(version: 20160506030752) do

  create_table "assets", force: :cascade do |t|
    t.integer  "equity_id"
    t.integer  "liability_id"
    t.integer  "balance"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "assets", ["user_id"], name: "index_assets_on_user_id"

  create_table "balance_sheets", force: :cascade do |t|
    t.string   "timeline"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "tag"
    t.text     "note"
    t.integer  "user_id"
    t.integer  "family_id"
    t.date     "milestone"
    t.boolean  "archive"
    t.boolean  "private"
    t.boolean  "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books", ["family_id"], name: "index_books_on_family_id"
  add_index "books", ["user_id"], name: "index_books_on_user_id"

  create_table "equities", force: :cascade do |t|
    t.integer  "starting_balance"
    t.integer  "current_balance"
    t.string   "nickname"
    t.string   "bank_name"
    t.integer  "user_id"
    t.integer  "family_id"
    t.boolean  "flag"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "equities", ["family_id"], name: "index_equities_on_family_id"
  add_index "equities", ["user_id"], name: "index_equities_on_user_id"

  create_table "expenses", force: :cascade do |t|
    t.string   "name"
    t.integer  "budget"
    t.integer  "balance"
    t.integer  "book_id"
    t.integer  "user_id"
    t.integer  "family_id"
    t.integer  "equity_id"
    t.integer  "allocate_day"
    t.boolean  "archive"
    t.boolean  "flag"
    t.boolean  "required"
    t.boolean  "allocate"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "expenses", ["book_id"], name: "index_expenses_on_book_id"
  add_index "expenses", ["equity_id"], name: "index_expenses_on_equity_id"
  add_index "expenses", ["family_id"], name: "index_expenses_on_family_id"
  add_index "expenses", ["user_id"], name: "index_expenses_on_user_id"

  create_table "families", force: :cascade do |t|
    t.string   "name"
    t.string   "passphrase"
    t.integer  "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funds", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "amount"
    t.date     "deposit_date"
    t.integer  "vendor_id"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "funds", ["family_id"], name: "index_funds_on_family_id"
  add_index "funds", ["user_id"], name: "index_funds_on_user_id"

  create_table "help", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "youtube"
    t.string   "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liabilities", force: :cascade do |t|
    t.integer  "starting_balance"
    t.string   "interest_rate"
    t.string   "nickname"
    t.integer  "minimum_payment"
    t.integer  "due_day"
    t.boolean  "archive"
    t.integer  "current_balance"
    t.integer  "family_id"
    t.integer  "user_id"
    t.boolean  "flag"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "liabilities", ["family_id"], name: "index_liabilities_on_family_id"
  add_index "liabilities", ["user_id"], name: "index_liabilities_on_user_id"

  create_table "notes", force: :cascade do |t|
    t.string   "body"
    t.boolean  "archive"
    t.integer  "expense_id"
    t.integer  "book_id"
    t.integer  "equity_id"
    t.integer  "spend_id"
    t.integer  "transfer_id"
    t.integer  "vendor_id"
    t.integer  "liability_id"
    t.integer  "user_id"
    t.integer  "family_id"
    t.boolean  "flag"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "notes", ["family_id"], name: "index_notes_on_family_id"
  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "plans", force: :cascade do |t|
    t.string   "image_url"
    t.string   "name"
    t.date     "launch_date"
    t.text     "summary"
    t.integer  "investment_time"
    t.integer  "investment_money"
    t.integer  "mo_goal"
    t.string   "project_url"
    t.string   "business_plan_url"
    t.string   "vendor_url"
    t.string   "customer_url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "profit_loss_statements", force: :cascade do |t|
    t.string   "timeline"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.boolean  "delete_account"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "spends", force: :cascade do |t|
    t.integer  "equity_id"
    t.integer  "vendor_id"
    t.integer  "amount"
    t.integer  "expense_id"
    t.integer  "spend_date"
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "family_id"
    t.boolean  "flag"
    t.boolean  "tax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "spends", ["family_id"], name: "index_spends_on_family_id"
  add_index "spends", ["user_id"], name: "index_spends_on_user_id"

  create_table "streams", force: :cascade do |t|
    t.string   "name"
    t.integer  "amount"
    t.boolean  "estimate"
    t.boolean  "auto_allocate"
    t.integer  "equity_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.boolean  "complete"
    t.boolean  "archive"
    t.integer  "expense_id"
    t.integer  "book_id"
    t.integer  "equity_id"
    t.integer  "spend_id"
    t.integer  "transfer_id"
    t.integer  "vendor_id"
    t.integer  "liability_id"
    t.integer  "user_id"
    t.integer  "family_id"
    t.boolean  "flag"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "tasks", ["family_id"], name: "index_tasks_on_family_id"
  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

  create_table "transfers", force: :cascade do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.integer  "amount"
    t.boolean  "archive"
    t.integer  "user_id"
    t.integer  "family_id"
    t.boolean  "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "transfers", ["family_id"], name: "index_transfers_on_family_id"
  add_index "transfers", ["user_id"], name: "index_transfers_on_user_id"

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.integer  "family_id"
    t.integer  "preferences_id"
    t.boolean  "family_access"
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["family_id"], name: "index_users_on_family_id"
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.boolean  "archive"
    t.integer  "user_id"
    t.integer  "family_id"
    t.boolean  "flag"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vendors", ["family_id"], name: "index_vendors_on_family_id"
  add_index "vendors", ["user_id"], name: "index_vendors_on_user_id"

end
