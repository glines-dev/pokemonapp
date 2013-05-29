class CreateTypes < ActiveRecord::Migration
  def up
    create_table :types do |t|
      t.string :name
      t.timestamps
    end
    add_index :types, :name
  end

  def down
    drop_table :types
  end
end
