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

ActiveRecord::Schema.define(version: 2018_11_13_125947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "doctor_id"
    t.bigint "patient_id"
    t.integer "start_time"
    t.integer "end_time"
    t.datetime "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "confirmed", default: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_diseases_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profession"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_doctors_on_user_id"
  end

  create_table "forums", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.text "thumb_img"
    t.string "creator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_medicines_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "relations", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "reservation"
    t.index ["doctor_id"], name: "index_relations_on_doctor_id"
    t.index ["patient_id"], name: "index_relations_on_patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "account_type"
    t.string "name"
    t.text "img"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "diseases", "patients"
  add_foreign_key "doctors", "users"
  add_foreign_key "medicines", "patients"
  add_foreign_key "patients", "users"
  add_foreign_key "relations", "doctors"
  add_foreign_key "relations", "patients"
end
