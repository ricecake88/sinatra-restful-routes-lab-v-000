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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180807065021) do

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "ingredients"
    t.string "cook_time"
=======
ActiveRecord::Schema.define(version: 20180806061359) do

  create_table "recipes", force: :cascade do |t|
    t.string  "name"
    t.string  "ingredients"
    t.integer "cook_time"
>>>>>>> 0e5e2aabacebd78280418110d3147743ab1cc98d
  end

end
