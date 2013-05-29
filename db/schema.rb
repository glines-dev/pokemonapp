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

ActiveRecord::Schema.define(:version => 20130525005014) do

  create_table "attack1s", :force => true do |t|
    t.string   "name"
    t.integer  "damage"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "attack1s", ["damage"], :name => "index_attack1s_on_damage"
  add_index "attack1s", ["description"], :name => "index_attack1s_on_description"
  add_index "attack1s", ["name"], :name => "index_attack1s_on_name"

  create_table "attack2s", :force => true do |t|
    t.string   "name"
    t.integer  "damage"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "attack2s", ["damage"], :name => "index_attack2s_on_damage"
  add_index "attack2s", ["description"], :name => "index_attack2s_on_description"
  add_index "attack2s", ["name"], :name => "index_attack2s_on_name"

  create_table "energies", :force => true do |t|
    t.string   "name"
    t.integer  "amount"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "energies", ["amount"], :name => "index_energies_on_amount"
  add_index "energies", ["name"], :name => "index_energies_on_name"

  create_table "pokemons", :force => true do |t|
    t.string   "name"
    t.integer  "card_number"
    t.string   "type"
    t.string   "weakness"
    t.integer  "attack1"
    t.integer  "attack2"
    t.integer  "power"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "pokemons", ["attack1"], :name => "index_pokemons_on_attack1"
  add_index "pokemons", ["attack2"], :name => "index_pokemons_on_attack2"
  add_index "pokemons", ["power"], :name => "index_pokemons_on_power"
  add_index "pokemons", ["type"], :name => "index_pokemons_on_type"
  add_index "pokemons", ["weakness"], :name => "index_pokemons_on_weakness"

  create_table "powers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "powers", ["description"], :name => "index_powers_on_description"
  add_index "powers", ["name"], :name => "index_powers_on_name"

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "types", ["name"], :name => "index_types_on_name"

end
