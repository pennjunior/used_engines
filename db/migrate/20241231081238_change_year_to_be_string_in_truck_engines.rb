class ChangeYearToBeStringInTruckEngines < ActiveRecord::Migration[7.1]
  def up
    change_column :truck_engines, :year, :string
  end

  def down
    change_column :truck_engines, :year, :integer
  end
end
