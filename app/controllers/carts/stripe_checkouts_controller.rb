module Carts
  class StripeCheckoutsController < ApplicationController
    def create
      @cart_items = @cart.line_items.includes(:engine)

      session = Stripe::Checkout::Session.create({
        ui_mode: 'embedded',
        line_items: @cart_items.map do |item|
          {
            price_data: {
              currency: 'usd',
              product_data: {
                name: item.engine.title
    
              },
              unit_amount: (item.engine.price * 100).to_i,
            },
            quantity: item.quantity
          }
        end,
        mode: 'payment',
        return_url: success_cart_purchases_url(@cart),
      })

      render json: { clientSecret: session.client_secret }
      @cart_items.destroy_all
    end
  end
end