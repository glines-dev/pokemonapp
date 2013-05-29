class CreatePowers < ActiveRecord::Migration
  def up
    create_table :powers do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
    add_index :powers, :name
    add_index :powers, :description
  end

  def down
    drop_table :powers
  end
end
