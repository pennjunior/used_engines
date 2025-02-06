class CreateSavedCars < ActiveRecord::Migration[7.1]
  def change
    create_table :saved_cars do |t|
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
