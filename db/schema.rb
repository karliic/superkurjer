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

ActiveRecord::Schema.define(:version => 20130506090402) do

  create_table "admins", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "articles", :force => true do |t|
    t.string   "author"
    t.string   "title"
    t.text     "content"
    t.integer  "position"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "companies", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "galleries", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.integer  "team_id"
    t.string   "team1"
    t.string   "team2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "games", ["team_id"], :name => "index_games_on_team_id"

  create_table "images", :force => true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "paintings", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "players", :force => true do |t|
    t.integer  "team_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.integer  "number"
    t.string   "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "players", ["team_id"], :name => "index_players_on_team_id"

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "publics", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "standings", :force => true do |t|
    t.integer  "team_id"
    t.integer  "place"
    t.string   "name"
    t.string   "division"
    t.integer  "games"
    t.integer  "wins"
    t.integer  "lost"
    t.integer  "ot"
    t.integer  "points"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "standings", ["team_id"], :name => "index_standings_on_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "arena"
    t.string   "conference"
    t.string   "division"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
