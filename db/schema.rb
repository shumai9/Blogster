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

ActiveRecord::Schema.define(version: 2018_04_21_182859) do

  create_table "admin_user_articles", id: false, force: :cascade do |t|
    t.integer "admin_user_id"
    t.integer "article_id"
    t.index ["admin_user_id", "article_id"], name: "index_admin_user_articles_on_admin_user_id_and_article_id"
  end

  create_table "admin_user_pages", id: false, force: :cascade do |t|
    t.integer "admin_user_id"
    t.integer "page_id"
    t.index ["admin_user_id", "page_id"], name: "index_admin_user_pages_on_admin_user_id_and_page_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "dob", null: false
    t.string "email", limit: 100, default: "", null: false
    t.string "hashed_password", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address", limit: 25
    t.index [nil], name: "index_admin_users_on_username"
  end

  create_table "article_edits", force: :cascade do |t|
    t.integer "admin_user_id"
    t.integer "article_id"
    t.string "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id", "article_id"], name: "index_article_edits_on_admin_user_id_and_article_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title", null: false
    t.string "author", null: false
    t.integer "position"
    t.text "body", null: false
    t.boolean "visible", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "page_id"
    t.string "name", null: false
    t.integer "position"
    t.text "body", null: false
    t.boolean "visible", default: false
    t.string "comment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id"], name: "index_comments_on_page_id"
  end

  create_table "pages", force: :cascade do |t|
    t.integer "article_id"
    t.string "name"
    t.string "permalink"
    t.integer "position"
    t.boolean "visibile", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_pages_on_article_id"
    t.index ["permalink"], name: "index_pages_on_permalink"
  end

end
