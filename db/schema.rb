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

ActiveRecord::Schema.define(version: 2022_03_25_142049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "license_number"
    t.string "specialization"
    t.string "clinic_name"
    t.string "clinic_address"
    t.string "contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "brand_name"
    t.string "generic_name"
    t.string "dosage_form"
    t.decimal "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
    t.boolean "is_favorite"
  end

  create_table "prescribed_medicines", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "prescription_id", null: false
    t.bigint "medicine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "prescription_notes_id"
    t.string "note"
    t.index ["medicine_id"], name: "index_prescribed_medicines_on_medicine_id"
    t.index ["prescription_id"], name: "index_prescribed_medicines_on_prescription_id"
    t.index ["prescription_notes_id"], name: "index_prescribed_medicines_on_prescription_notes_id"
  end

  create_table "prescription_notes", force: :cascade do |t|
    t.string "content"
    t.bigint "prescription_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prescription_id"], name: "index_prescription_notes_on_prescription_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.date "date_prescribed"
    t.bigint "doctor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
  end

  add_foreign_key "prescribed_medicines", "medicines"
  add_foreign_key "prescribed_medicines", "prescription_notes", column: "prescription_notes_id"
  add_foreign_key "prescribed_medicines", "prescriptions"
  add_foreign_key "prescription_notes", "prescriptions"
  add_foreign_key "prescriptions", "doctors"
end
