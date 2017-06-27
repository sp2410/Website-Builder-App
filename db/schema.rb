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

ActiveRecord::Schema.define(version: 20170627044537) do

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "messagetext"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "website_id"
    t.index ["website_id"], name: "index_messages_on_website_id"
  end

  create_table "page_sections", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "number_of_elements"
    t.string   "background_color"
    t.integer  "page_id"
    t.index ["page_id"], name: "index_page_sections_on_page_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "website_id"
    t.boolean  "show_page_on_index", default: false
    t.string   "header"
    t.string   "header_color"
    t.string   "subheader"
    t.string   "subheader_color"
    t.string   "page_color"
    t.index ["website_id"], name: "index_pages_on_website_id"
  end

  create_table "sectiontypes", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "page_section_id"
    t.string   "widget_type"
    t.string   "title"
    t.string   "type_url"
    t.string   "font_type"
    t.string   "details"
    t.string   "image_border"
    t.string   "text_color"
    t.index ["page_section_id"], name: "index_sectiontypes_on_page_section_id"
  end

  create_table "template_csses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "css_description"
    t.string   "cssimage"
  end

  create_table "timetables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "day"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "website_id"
    t.index ["website_id"], name: "index_timetables_on_website_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
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
    t.string   "title_color"
    t.string   "subheading_color"
    t.string   "footer_color"
    t.string   "footer_text_color"
    t.integer  "user_id"
    t.index ["template_csses_id"], name: "index_websites_on_template_csses_id"
    t.index ["user_id"], name: "index_websites_on_user_id"
  end

end
