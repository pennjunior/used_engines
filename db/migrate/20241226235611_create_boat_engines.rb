class CreateBoatEngines < ActiveRecord::Migration[7.1]
  def change
    create_table :boat_engines do |t|
      t.integer :power
      t.string :engine_type
      t.string :hull_material
      t.string :manufacturer
      t.integer :year
      t.decimal :price
      t.string :condition
      t.text :description

      t.timestamps
    end
  end
end
