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

ActiveRecord::Schema.define(version: 20180118180619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crimes", force: :cascade do |t|
    t.string "charge"
    t.string "date_of_charge"
    t.string "victim"
    t.boolean "case_closed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "criminal_id"
    t.index ["criminal_id"], name: "index_crimes_on_criminal_id"
  end

  create_table "criminals", force: :cascade do |t|
    t.string "ssn"
    t.string "name"
    t.string "alias"
    t.string "dob"
    t.string "origin"
    t.string "bloodtype"
    t.string "scars_marks_tattoos"
    t.string "eye_color"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "operator_id"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["operator_id"], name: "index_criminals_on_operator_id"
  end

  create_table "operators", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "agency"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
  end

  add_foreign_key "crimes", "criminals"
  add_foreign_key "criminals", "operators"
end
