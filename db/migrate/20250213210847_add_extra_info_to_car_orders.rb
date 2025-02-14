class AddExtraInfoToCarOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :car_orders, :extra_info, :string
  end
end
