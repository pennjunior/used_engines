class AddCartDataAndTotalToPurchases < ActiveRecord::Migration[7.1]
  def change
    add_column :purchases, :cart_data, :text
    add_column :purchases, :total_amount, :decimal
  end
end
