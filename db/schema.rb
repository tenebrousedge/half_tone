# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_07_031808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "unconfirmed_email"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_authors_on_confirmation_token", unique: true
    t.index ["email"], name: "index_authors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_authors_on_reset_password_token", unique: true
  end

  create_table "backgrounds", force: :cascade do |t|
    t.string "backgroundable_type", null: false
    t.bigint "backgroundable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["backgroundable_type", "backgroundable_id"], name: "index_backgrounds_on_backgroundable_type_and_backgroundable_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.integer "sort_order"
    t.bigint "comic_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comic_id", "sort_order"], name: "index_books_on_comic_id_and_sort_order", unique: true
    t.index ["comic_id"], name: "index_books_on_comic_id"
  end

  create_table "comics", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.integer "sort_order"
    t.bigint "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id", "sort_order"], name: "index_comics_on_author_id_and_sort_order", unique: true
    t.index ["author_id", "title"], name: "index_comics_on_author_id_and_title", unique: true
    t.index ["author_id"], name: "index_comics_on_author_id"
    t.index ["sort_order"], name: "index_comics_on_sort_order"
  end

  create_table "covers", force: :cascade do |t|
    t.string "coverable_type", null: false
    t.bigint "coverable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coverable_type", "coverable_id"], name: "index_covers_on_coverable_type_and_coverable_id"
  end

  create_table "custom_styles", force: :cascade do |t|
    t.string "text"
    t.string "styleable_type", null: false
    t.bigint "styleable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["styleable_type", "styleable_id"], name: "index_custom_styles_on_styleable_type_and_styleable_id"
  end

  create_table "pages", force: :cascade do |t|
    t.time "published_at"
    t.integer "sort_order"
    t.string "pageable_type", null: false
    t.bigint "pageable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pageable_type", "pageable_id", "sort_order"], name: "index_pages_on_pageable_type_and_pageable_id_and_sort_order", unique: true
    t.index ["pageable_type", "pageable_id"], name: "index_pages_on_pageable_type_and_pageable_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
