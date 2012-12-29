class CreateSpreads < ActiveRecord::Migration
  def change
    create_table :spreads do |t|
      t.string :title
      t.text :body
      t.integer :spreadable_id  
      t.string :spreadable_type

      t.timestamps
    end
    add_index :spreads, [:spreadable_id, :spreadable_type]
  end
end
