class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      # t.references :order, null: false, foreign_key: true
      t.references :engine, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
