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

ActiveRecord::Schema.define(:version => 20130204225859) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "cod_city"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "point_routes", :force => true do |t|
    t.integer  "point_id"
    t.string   "cod_route"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "point_stops", :force => true do |t|
    t.string   "cod_point"
    t.spatial  "coord_desc",  :limit => {:srid=>4326, :type=>"point", :geographic=>true}
    t.string   "next_to"
    t.string   "route_point"
    t.integer  "refer"
    t.datetime "created_at",                                                              :null => false
    t.datetime "updated_at",                                                              :null => false
  end

  add_index "point_stops", ["coord_desc"], :name => "index_point_stops_on_coord_desc", :spatial => true

  create_table "routes", :force => true do |t|
    t.string   "cod_route"
    t.string   "name_route"
    t.spatial  "path",       :limit => {:srid=>4326, :type=>"line_string", :geographic=>true}
    t.boolean  "sense_way"
    t.string   "price"
    t.string   "station"
    t.datetime "created_at",                                                                   :null => false
    t.datetime "updated_at",                                                                   :null => false
  end

  add_index "routes", ["path"], :name => "index_routes_on_path", :spatial => true

  create_table "transports", :force => true do |t|
    t.string   "cod_transpot"
    t.boolean  "sense_way"
    t.boolean  "accessibility"
    t.integer  "stocking"
    t.string   "coord_real_time"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
