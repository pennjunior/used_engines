class CreateTruckEngines < ActiveRecord::Migration[7.1]
  def change
    create_table :truck_engines do |t|
      t.integer :towing_capacity
      t.string :engine_type
      t.string :fuel_type
      t.integer :mileage
      t.string :manufacturer
      t.integer :year
      t.decimal :price
      t.string :condition
      t.text :description

      t.timestamps
    end
  end
end
