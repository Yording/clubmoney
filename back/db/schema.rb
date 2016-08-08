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

ActiveRecord::Schema.define(version: 20160806192722) do

  create_table "contributes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "quota"
    t.integer  "0"
    t.integer  "snack"
    t.integer  "fine_id"
    t.integer  "debt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_contributes_on_event_id"
    t.index ["fine_id"], name: "index_contributes_on_fine_id"
    t.index ["user_id"], name: "index_contributes_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.date     "date"
    t.integer  "profit",     default: 0
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "fines", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "amount_loan"
    t.integer  "balance",     default: 0
    t.integer  "state_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["state_id"], name: "index_loans_on_state_id"
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "loan_id"
    t.decimal  "interest"
    t.integer  "quota"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loan_id"], name: "index_payments_on_loan_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "role"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "state"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "token"
    t.string   "name"
    t.boolean  "active",             default: true
    t.integer  "number_of_requests", default: 0
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "role_id"
    t.string   "identity"
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "user_name"
    t.string   "password_digest"
    t.date     "birth_date"
    t.boolean  "active",          default: true
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
