class AddSlugToEngines < ActiveRecord::Migration[7.1]
  def change
    add_column :engines, :slug, :string
    add_index :engines, :slug, unique: true
  end
end
