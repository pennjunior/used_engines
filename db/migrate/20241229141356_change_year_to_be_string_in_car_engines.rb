class ChangeYearToBeStringInCarEngines < ActiveRecord::Migration[6.1]
  def up
    change_column :car_engines, :year, :string
  end

  def down
    change_column :car_engines, :year, :integer
  end
end
