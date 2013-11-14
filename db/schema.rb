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

ActiveRecord::Schema.define(version: 20131108144144) do

  create_table "admins", force: true do |t|
    t.string   "admin"
    t.string   "pass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "advs", force: true do |t|
    t.text     "adtype"
    t.string   "adtitle"
    t.string   "adurl"
    t.string   "adpath"
    t.string   "addescription"
    t.integer  "orderid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", force: true do |t|
    t.string   "title"
    t.string   "keywords"
    t.string   "description"
    t.string   "path"
    t.string   "author"
    t.integer  "commentcounter"
    t.string   "brief"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articletypes", force: true do |t|
    t.string   "name"
    t.string   "path"
    t.string   "description"
    t.string   "pingyinseo"
    t.integer  "orderid"
    t.integer  "belongid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_types", force: true do |t|
    t.string   "name"
    t.string   "keywords"
    t.string   "description"
    t.string   "pic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "comment"
    t.string   "user"
    t.string   "emai"
    t.integer  "article_id"
    t.integer  "protype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "orderid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.string   "user"
    t.string   "email"
    t.integer  "islock"
    t.string   "reyplay"
    t.integer  "replacetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "body"
    t.string   "body_html"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "body"
    t.string   "body_html"
    t.integer  "active"
    t.integer  "approved_comments_count"
    t.string   "cached_tag_list"
    t.datetime "published"
    t.datetime "edited_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pros", force: true do |t|
    t.string   "proname"
    t.string   "prosn"
    t.string   "keywords"
    t.string   "description"
    t.string   "brief"
    t.integer  "belongid"
    t.integer  "orderid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "protypes", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "keywords"
    t.integer  "orderid"
    t.integer  "belongid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.integer  "taggings_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "undo_items", force: true do |t|
    t.string   "type"
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "webconfigs", force: true do |t|
    t.string   "key",        limit: 15
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
