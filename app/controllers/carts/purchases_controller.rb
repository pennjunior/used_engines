module Carts 
  class PurchasesController < ApplicationController
    before_action :set_cart_items
    
    def new
      @purchase = Purchase.new
    end

    def create
      @purchase = Purchase.new(purchase_params)
      @purchase.cart_data = serialize_cart_data
      @purchase.total_amount = calculate_total
      
      if @purchase.save
        @cart.line_items.destroy_all

        #track conversion with value
         GoogleAdsConversionService.track_conversion(
          conversion_id: ENV['GOOGLE_CONVERSION_ID_PURCHASE'],
          value: @purchase.total_amount,
          currency: 'USD'
        )

        redirect_to success_cart_purchases_path(cart_id: params[:cart_id])
      else
        render :new, status: :unprocessable_entity
      end
    end

    def success
      @purchase = Purchase.order(:created_at).last
    end

  
    private
    
    def set_cart_items
      @cart_items = @cart.line_items.includes(:engine)
    end
    
    def calculate_total
      @cart_items.sum { |item| item.engine.price * item.quantity }
    end
  
    def purchase_params
      params.require(:purchase).permit(:email, :phone, :shipping_address, :billing_address, :payment_method)
    end
    
    def serialize_cart_data
      @cart.line_items.includes(:engine).map do |item|
        {
          engine_name: item.engine.title,
          quantity: item.quantity,
          price: item.engine.price
        }
      end.to_json
    end
    
  end
end