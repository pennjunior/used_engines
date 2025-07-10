class OrdersController < ApplicationController
  def create
    cart = session[:cart] || []
    engines = Engine.where(id: cart)

    if engines.empty?
      redirect_to root_path, alert: "Cart is empty"
      return
    end

    order = Order.create!(total: engines.sum(&:price), status: "pending")

    engines.each do |engine|
      order.line_items.create!(engine: engine, quantity: 1)
    end

    # Stripe Line Items
    line_items = engines.map do |engine|
      {
        price_data: {
          currency: "usd",
          product_data: {
            name: engine.title
          },
          unit_amount: (engine.price * 100).to_i
        },
        quantity: 1
      }
    end

    session_data = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      line_items: line_items,
      mode: "payment",
      success_url: "#{root_url}orders/success?order_id=#{order.id}",
      cancel_url: "#{root_url}orders/cancel"
    )

    order.update(stripe_session_id: session_data.id)

    redirect_to session_data.url, allow_other_host: true
  end

  def success
    order = Order.find_by(id: params[:order_id])
    order.update(status: "paid") if order

    session[:cart] = []
    redirect_to root_path, notice: "Payment successful! 🎉"
  end

  def cancel
    redirect_to root_path, alert: "Payment was canceled."
  end

end
