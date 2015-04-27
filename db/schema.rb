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

ActiveRecord::Schema.define(version: 20150411230051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "image_url"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "descriptions", force: :cascade do |t|
    t.integer  "list_id"
    t.string   "name"
    t.string   "subtitle"
    t.string   "subtitulo"
    t.string   "address"
    t.text     "detail"
    t.text     "detalhe"
    t.integer  "priceRange" # Rails and Ruby really encourage names_to_be_capitalized_like_this
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "descriptions", ["list_id"], name: "index_descriptions_on_list_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.integer  "description_id"
    t.string   "image_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "images", ["description_id"], name: "index_images_on_description_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.string   "nome"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lists", ["city_id"], name: "index_lists_on_city_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",            default: ""
    t.string   "email",                        null: false
    t.string   "password_digest",              null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_foreign_key "descriptions", "lists"
  add_foreign_key "images", "descriptions"
  add_foreign_key "lists", "cities"
end
