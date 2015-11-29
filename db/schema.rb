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

ActiveRecord::Schema.define(version: 20151129215909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.text     "description"
    t.string   "target"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "acts", force: :cascade do |t|
    t.string   "desc"
    t.string   "target"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "kpi_id"
  end

  add_index "acts", ["kpi_id"], name: "index_acts_on_kpi_id", using: :btree

  create_table "authorizations", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.string   "contactName"
    t.string   "contactEmail"
    t.string   "contactPhone"
    t.text     "bio"
    t.string   "video"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "kactions", force: :cascade do |t|
    t.text     "description"
    t.string   "target"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "kpis", force: :cascade do |t|
    t.string   "description"
    t.string   "responsibility"
    t.datetime "milestone"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "plan_id"
  end

  add_index "kpis", ["plan_id"], name: "index_kpis_on_plan_id", using: :btree

  create_table "plans", force: :cascade do |t|
    t.string   "goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "plans", ["user_id"], name: "index_plans_on_user_id", using: :btree

  create_table "pusers", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "pusers", ["email"], name: "index_pusers_on_email", unique: true, using: :btree
  add_index "pusers", ["reset_password_token"], name: "index_pusers_on_reset_password_token", unique: true, using: :btree

  create_table "talents", force: :cascade do |t|
    t.text     "FName"
    t.text     "LName"
    t.text     "email"
    t.text     "portfolioLink"
    t.text     "linkedinLink"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "plans", "users"
end
