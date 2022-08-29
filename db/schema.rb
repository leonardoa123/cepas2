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

ActiveRecord::Schema[7.0].define(version: 2022_08_05_013608) do
  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cargos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cepas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enologos", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.string "nacionalidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ensamblajes", force: :cascade do |t|
    t.integer "porcentaje"
    t.integer "vino_id", null: false
    t.integer "cepa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cepa_id"], name: "index_ensamblajes_on_cepa_id"
    t.index ["vino_id"], name: "index_ensamblajes_on_vino_id"
  end

  create_table "revistas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trabajos", force: :cascade do |t|
    t.integer "enologo_id", null: false
    t.integer "revista_id", null: false
    t.integer "cargo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cargo_id"], name: "index_trabajos_on_cargo_id"
    t.index ["enologo_id"], name: "index_trabajos_on_enologo_id"
    t.index ["revista_id"], name: "index_trabajos_on_revista_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vinos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ensamblajes", "cepas"
  add_foreign_key "ensamblajes", "vinos"
  add_foreign_key "trabajos", "cargos"
  add_foreign_key "trabajos", "enologos"
  add_foreign_key "trabajos", "revistas"
end
