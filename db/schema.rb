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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130705203631) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "apartments", :force => true do |t|
    t.string   "title"
    t.integer  "room_number"
    t.integer  "free_room"
    t.boolean  "display"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "apartment_class"
    t.integer  "free_place",      :default => 0
  end

  create_table "api_news", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bookings", :force => true do |t|
    t.string   "name"
    t.string   "from"
    t.string   "to"
    t.integer  "places"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "rooms"
  end

  create_table "category_galleries", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "snippet"
    t.string   "keywords"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.boolean  "display",         :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "galleries_count", :default => 0
  end

  create_table "category_news", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "snippet"
    t.string   "keywords"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.boolean  "display",    :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "configurations", :force => true do |t|
    t.string   "site_title"
    t.string   "title_separator"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "configures", :force => true do |t|
    t.string   "site_title"
    t.string   "title_separator"
    t.string   "news_per_page"
    t.string   "module_news_per_page"
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
    t.string   "site_keywords"
    t.text     "site_snippet"
    t.integer  "news_id"
    t.string   "book_email"
    t.integer  "book_days_num",           :default => 45
    t.string   "email",                   :default => "noreply@ozerki.dn.ua"
    t.string   "book_excel_file_name"
    t.string   "book_excel_content_type"
    t.integer  "book_excel_file_size"
    t.datetime "book_excel_updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.integer  "category_gallery_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "author"
    t.text     "description"
    t.string   "keywords"
    t.boolean  "display",             :default => true
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "display_on_root",     :default => false
  end

  add_index "galleries", ["category_gallery_id"], :name => "index_galleries_on_category_gallery_id"

  create_table "infolines", :force => true do |t|
    t.string   "title"
    t.string   "route"
    t.integer  "new_id"
    t.integer  "page_id"
    t.string   "path"
    t.boolean  "display",    :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "position"
  end

  add_index "infolines", ["new_id"], :name => "index_infolines_on_new_id"
  add_index "infolines", ["page_id"], :name => "index_infolines_on_page_id"

  create_table "news", :force => true do |t|
    t.string   "title"
    t.text     "snippet",         :limit => 255
    t.text     "content",         :limit => 255
    t.string   "author"
    t.boolean  "root"
    t.boolean  "display",                        :default => true
    t.integer  "category_new_id"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.text     "precontent"
    t.string   "slug"
    t.string   "tag_list"
    t.integer  "position",                       :default => 0
    t.string   "lower_title"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.text     "snippet"
    t.string   "keywords"
    t.string   "author"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
    t.string   "lower_title"
  end

  create_table "socials", :force => true do |t|
    t.string   "title"
    t.string   "path"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "display"
    t.integer  "position"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_class"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "testimonals", :force => true do |t|
    t.text     "testimonal"
    t.string   "author"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "display"
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "path"
    t.boolean  "display",            :default => true
    t.integer  "position"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "duration"
  end

end
