class CreatePokemons < ActiveRecord::Migration
  def up
    create_table :pokemons do |t|
      t.string :name
      t.integer :card_number
      t.string :type
      t.string :weakness
      t.integer :attack1
      t.integer :attack2
      t.integer :power
      t.timestamps
    end
    add_index :pokemons, :type
    add_index :pokemons, :weakness
    add_index :pokemons, :attack1
    add_index :pokemons, :attack2
    add_index :pokemons, :power
  end

  def down
    drop_table :pokemons
  end
end
