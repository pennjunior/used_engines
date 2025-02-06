class AddDetailsToCarOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :car_orders, :name, :string
    add_column :car_orders, :email, :string
    add_column :car_orders, :phone, :string
    add_column :car_orders, :location, :string
    add_column :car_orders, :quantity, :integer
  end
end
