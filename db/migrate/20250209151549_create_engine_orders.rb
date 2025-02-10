class CreateEngineOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :engine_orders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :location
      t.integer :quantity
      t.decimal :total_price
      t.references :engine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
