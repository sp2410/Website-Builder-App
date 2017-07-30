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

ActiveRecord::Schema.define(version: 20170729205932) do

  create_table "added_cost_vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "added_costs", force: :cascade do |t|
    t.datetime "cost_date"
    t.float    "cost"
    t.boolean  "billed"
    t.float    "labor_cost_total"
    t.float    "total"
    t.string   "method_of_payment"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "vehicle_costs_id"
    t.index ["vehicle_costs_id"], name: "index_added_costs_on_vehicle_costs_id"
  end

  create_table "floor_plans", force: :cascade do |t|
    t.boolean  "floor_planned"
    t.float    "amount_floor_planned"
    t.datetime "date_opened"
    t.float    "percentcharged"
    t.float    "admin_fee"
    t.float    "setup_fee"
    t.float    "additional_fee"
    t.float    "length_of_floor_plan"
    t.integer  "days_untill_firstcurtailment"
    t.integer  "days_untill_secondcurtailment"
    t.integer  "days_untill_third_curtailment"
    t.string   "company_name"
    t.string   "company_contact"
    t.float    "total"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "vehicle_cost_id"
    t.index ["vehicle_cost_id"], name: "index_floor_plans_on_vehicle_cost_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "vin"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "image"
    t.integer  "year"
    t.integer  "miles"
    t.string   "transmission"
    t.string   "color"
    t.string   "cylinder"
    t.string   "fuel"
    t.string   "drive"
    t.integer  "price",             default: 0
    t.string   "newused"
    t.string   "model"
    t.string   "trim"
    t.string   "enginedescription"
    t.string   "interiorcolor"
    t.string   "imagefront"
    t.string   "imageback"
    t.string   "imageleft"
    t.string   "imageright"
    t.string   "frontinterior"
    t.string   "rearinterior"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "website_id"
    t.index ["website_id"], name: "index_inventories_on_website_id"
  end

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

  create_table "previous_owners", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "zip"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.string   "used_vehicle_for"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "inventory_id"
    t.index ["inventory_id"], name: "index_previous_owners_on_inventory_id"
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

  create_table "vehicle_costs", force: :cascade do |t|
    t.datetime "purchasedate"
    t.float    "originalcost"
    t.float    "buyerfee"
    t.float    "lotfee"
    t.float    "addedcst"
    t.float    "floorplancost"
    t.float    "totalcost"
    t.string   "methodofpayment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "inventory_id"
    t.index ["inventory_id"], name: "index_vehicle_costs_on_inventory_id"
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
