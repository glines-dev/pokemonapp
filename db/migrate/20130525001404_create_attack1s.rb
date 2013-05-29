class CreateAttack1s < ActiveRecord::Migration
  def up
    create_table :attack1s do |t|
      t.string :name
      t.integer :damage
      t.text :description
      t.timestamps
    end
    add_index :attack1s, :name
    add_index :attack1s, :damage
    add_index :attack1s, :description
  end

  def down
    drop_table :attack1s
  end
end
