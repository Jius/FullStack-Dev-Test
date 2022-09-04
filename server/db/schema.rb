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

ActiveRecord::Schema.define(version: 2022_09_04_140646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "siren"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interventions", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "company_id", null: false
    t.datetime "started_at", null: false
    t.text "address", null: false
    t.string "zipcode", null: false
    t.string "city", null: false
    t.integer "total_panels", null: false
    t.integer "type_panel", null: false
    t.string "ref_panel", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_interventions_on_company_id"
    t.index ["customer_id"], name: "index_interventions_on_customer_id"
  end

  add_foreign_key "interventions", "companies"
  add_foreign_key "interventions", "customers"
end
