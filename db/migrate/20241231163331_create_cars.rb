class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :category
      t.string :make
      t.string :model
      t.integer :year
      t.decimal :price
      t.string :engine_type
      t.string :fuel_type
      t.integer :engine_size
      t.integer :seats
      t.integer :doors
      t.string :transmission
      t.string :drivetrain
      t.string :registration_year
      t.string :dimension
      t.string :chassis_no
      t.string :engine_code
      t.string :steering
      t.string :ext_color
      t.string :location
      t.integer :weight
      t.string :version_class
      t.string :max_capacity
      t.text :description
      t.string :condition
      t.boolean :availability

      t.timestamps
    end
  end
end
