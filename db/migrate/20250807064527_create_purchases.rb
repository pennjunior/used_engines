class CreatePurchases < ActiveRecord::Migration[7.1]
  def change
    create_table :purchases do |t|
      t.string :email
      t.string :phone
      t.text :shipping_address
      t.text :billing_address
      t.string :payment_method

      t.timestamps
    end
  end
end
