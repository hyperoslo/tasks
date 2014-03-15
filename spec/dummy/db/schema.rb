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

ActiveRecord::Schema.define(version: 20140315151838) do

  create_table "tasks_tasks", force: true do |t|
    t.integer  "taskable_id"
    t.string   "taskable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks_tasks", ["taskable_id", "taskable_type"], name: "index_tasks_tasks_on_taskable_id_and_taskable_type"

end
