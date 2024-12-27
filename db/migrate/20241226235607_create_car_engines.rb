class CreateCarEngines < ActiveRecord::Migration[7.1]
  def change
    create_table :car_engines do |t|
      t.integer :horsepower
      t.string :fuel_type
      t.string :transmission
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
