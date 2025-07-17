class RemoveOrderFromLineItems < ActiveRecord::Migration[7.1]
  def change
    remove_reference :line_items, :order, null: false, foreign_key: true
  end
end
