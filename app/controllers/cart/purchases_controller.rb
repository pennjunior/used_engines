class Cart::PurchasesController < ApplicationController
  def new
    @cart = current_cart
    @purchase = Purchase.new

    render turbo_stream: turbo_stream.update(
      "checkout_modal",
      partial: "cart/purchases/checkout_form",
      locals: { cart: @cart, purchase: @purchase }
    )
  end

  def create
    @purchase = Purchase.new(purchase_params)

    if @purchase.save
      # optionally attach cart or line_items
      redirect_to confirmation_path, notice: "Order placed successfully."
    else
      render turbo_stream: turbo_stream.update(
        "checkout_modal",
        partial: "cart/purchases/checkout_form",
        locals: { cart: current_cart, purchase: @purchase }
      )
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(
      :email, :phone,
      :shipping_address, :billing_address,
      :payment_method
    )
  end
end
