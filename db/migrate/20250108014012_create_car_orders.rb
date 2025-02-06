class CreateCarOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :car_orders do |t|
      t.references :car, null: false, foreign_key: true
      t.decimal :total_price

      t.timestamps
    end
  end
end
