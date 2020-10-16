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

ActiveRecord::Schema.define(version: 2020_10_15_025739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agences", force: :cascade do |t|
    t.string "name"
    t.string "code_agence"
    t.bigint "banque_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["banque_id"], name: "index_agences_on_banque_id"
  end

  create_table "agents", force: :cascade do |t|
    t.string "matricule"
    t.string "nom"
    t.string "prenom"
    t.date "date_naissance"
    t.date "date_pec"
    t.date "date_recrutement"
    t.string "lieu_naissance"
    t.string "nationalite"
    t.string "email"
    t.string "telephone"
    t.string "adresse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "marier_id"
    t.bigint "titre_id"
    t.bigint "sexe_id"
    t.bigint "departement_id"
    t.bigint "region_id"
    t.bigint "mode_paiement_id"
    t.bigint "banque_id"
    t.bigint "agence_id"
    t.bigint "billeteur_id"
    t.string "numcomptebancaire"
    t.index ["agence_id"], name: "index_agents_on_agence_id"
    t.index ["banque_id"], name: "index_agents_on_banque_id"
    t.index ["billeteur_id"], name: "index_agents_on_billeteur_id"
    t.index ["departement_id"], name: "index_agents_on_departement_id"
    t.index ["marier_id"], name: "index_agents_on_marier_id"
    t.index ["mode_paiement_id"], name: "index_agents_on_mode_paiement_id"
    t.index ["region_id"], name: "index_agents_on_region_id"
    t.index ["sexe_id"], name: "index_agents_on_sexe_id"
    t.index ["titre_id"], name: "index_agents_on_titre_id"
  end

  create_table "banques", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billeteurs", force: :cascade do |t|
    t.string "code"
    t.string "nom_billeteur"
    t.string "matricule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departements", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_departements_on_region_id"
  end

  create_table "mariers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mode_paiements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "agences", "banques"
  add_foreign_key "agents", "agences"
  add_foreign_key "agents", "banques"
  add_foreign_key "agents", "billeteurs"
  add_foreign_key "agents", "departements"
  add_foreign_key "agents", "mariers"
  add_foreign_key "agents", "mode_paiements"
  add_foreign_key "agents", "regions"
  add_foreign_key "agents", "sexes", column: "sexe_id"
  add_foreign_key "agents", "titres"
  add_foreign_key "departements", "regions"
end
