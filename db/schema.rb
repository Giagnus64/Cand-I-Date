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

ActiveRecord::Schema.define(version: 2019_08_19_203432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "issues", force: :cascade do |t|
    t.string "topic"
    t.string "approval_statement"
    t.string "disapproval_statement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "politicians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "state"
    t.string "img_url"
    t.string "party"
    t.string "chamber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stances", force: :cascade do |t|
    t.bigint "politician_id"
    t.bigint "issue_id"
    t.boolean "support"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["issue_id"], name: "index_stances_on_issue_id"
    t.index ["politician_id"], name: "index_stances_on_politician_id"
  end

  add_foreign_key "stances", "issues"
  add_foreign_key "stances", "politicians"
end
