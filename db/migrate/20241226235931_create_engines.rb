class CreateEngines < ActiveRecord::Migration[7.1]
  def change
    create_table :engines do |t|
      t.references :engineable, polymorphic: true, null: false
      t.decimal :price
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
