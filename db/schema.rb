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

ActiveRecord::Schema.define(version: 20151128010611) do

  create_table "acts", force: :cascade do |t|
    t.string   "desc"
    t.string   "target"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "kpi_id"
  end

  add_index "acts", ["kpi_id"], name: "index_acts_on_kpi_id"

  create_table "kpis", force: :cascade do |t|
    t.string   "description"
    t.string   "responsibility"
    t.datetime "milestone"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "plan_id"
  end

  add_index "kpis", ["plan_id"], name: "index_kpis_on_plan_id"

  create_table "plans", force: :cascade do |t|
    t.string   "goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end