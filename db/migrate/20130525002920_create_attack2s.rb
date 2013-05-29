class CreateAttack2s < ActiveRecord::Migration
  def up
    create_table :attack2s do |t|
      t.string :name
      t.integer :damage
      t.text :description
      t.timestamps
    end
    add_index :attack2s, :name
    add_index :attack2s, :damage
    add_index :attack2s, :description
  end

  def down
    drop_table :attack2s
  end
end
