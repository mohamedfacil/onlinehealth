# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_22_025544) do

  create_table "doctors", force: :cascade do |t|
    t.string "doctor_name"
    t.string "address"
    t.string "department"
    t.string "qualification"
    t.date "dob"
    t.boolean "gender"
    t.string "email"
    t.string "password_digest"
    t.integer "phone"
    t.integer "hospital_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hospital_id"], name: "index_doctors_on_hospital_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "hospital_name"
    t.string "address"
    t.string "email"
    t.string "password_digest"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "patient_name"
    t.string "address"
    t.boolean "gender"
    t.date "dob"
    t.string "email"
    t.string "password_digest"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "previousrecords", force: :cascade do |t|
    t.string "previous_records"
    t.integer "patient_id", null: false
    t.integer "doctor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_previousrecords_on_doctor_id"
    t.index ["patient_id"], name: "index_previousrecords_on_patient_id"
  end

  add_foreign_key "doctors", "hospitals"
  add_foreign_key "previousrecords", "doctors"
  add_foreign_key "previousrecords", "patients"
end
