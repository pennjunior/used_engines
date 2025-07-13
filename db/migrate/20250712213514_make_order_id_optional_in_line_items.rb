class MakeOrderIdOptionalInLineItems < ActiveRecord::Migration[7.0]
  def change
    change_column_null :line_items, :order_id, true
  end
end
