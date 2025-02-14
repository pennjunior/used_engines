class AddExtraInfoToEngineOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :engine_orders, :extra_info, :string
  end
end
