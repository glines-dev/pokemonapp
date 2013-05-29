class CreateEnergies < ActiveRecord::Migration
  def up
    create_table :energies do |t|
      t.string :name
      t.integer :amount
      t.timestamps
    end
    add_index :energies, :name
    add_index :energies, :amount
  end
  
  def down
    drop_table :energies
  end
end
