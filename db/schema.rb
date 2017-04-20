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

ActiveRecord::Schema.define(version: 20170419234520) do

  create_table "page_sections", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pages_id"
    t.string   "header"
    t.string   "paragraph"
    t.string   "image"
    t.index ["pages_id"], name: "index_page_sections_on_pages_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "website_id"
    t.index ["website_id"], name: "index_pages_on_website_id"
  end

  create_table "template_csses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "css_description"
  end

  create_table "websites", force: :cascade do |t|
    t.string   "title"
    t.string   "logo"
    t.string   "mainimage"
    t.string   "subheading"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "template_csses_id"
    t.string   "phone"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "facebooklink"
    t.string   "twitterlink"
    t.string   "youtubelink"
    t.index ["template_csses_id"], name: "index_websites_on_template_csses_id"
  end

end
