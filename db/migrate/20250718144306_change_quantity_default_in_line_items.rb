class ChangeQuantityDefaultInLineItems < ActiveRecord::Migration[7.1]
  def change
    change_column_default :line_items, :quantity, 1
  end
end
