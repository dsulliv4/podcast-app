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

ActiveRecord::Schema.define(version: 2021_01_08_050926) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "podcasts", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_podcasts_on_category_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "stars"
    t.integer "description"
    t.integer "user_id", null: false
    t.integer "podcast_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["podcast_id"], name: "index_reviews_on_podcast_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "user_podcasts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "podcast_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "podcasts", "categories"
  add_foreign_key "reviews", "podcasts"
  add_foreign_key "reviews", "users"
end
