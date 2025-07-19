class CartsController < ApplicationController
    def show
        @render_cart = false
    end


  def add_item
    # 🔍 DEBUG: Start of add_item

    puts "🔍 Received params: #{params.inspect}"

    Rails.logger.debug "🎯 add_item hit with params: #{params.inspect}"

    @engine = Engine.find(params[:engine_id])
    quantity = params[:quantity].to_i

    current_item = @cart.line_items.find_by(engine_id: @engine.id)

    if current_item
        current_item.update(quantity: (current_item.quantity).to_i + quantity)
    else
        @cart.line_items.create(engine: @engine, quantity: quantity)
    end

    respond_to do |format|
        format.turbo_stream
        # format.html { redirect_to request.referer || root_path } # fallback if Turbo fails
    end
  end




  def remove_item
    Rails.logger.debug "🗑️ Removing line item with params: #{params.inspect}"

    line_item = @cart.line_items.find_by(id: params[:id])

    if line_item
      @line_item_id = line_item.id
      line_item.destroy
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to cart_path, notice: "Item removed." }
      end
    else
      Rails.logger.warn "⚠️ Could not find line item with id=#{params[:id]}"
      respond_to do |format|
        format.html { redirect_to cart_path, alert: "Item not found." }
        format.turbo_stream { head :not_found }
      end
    end
  end



  def checkout
    @line_items = @cart.line_items.includes(:engine)
    @carts = @cart.line_items.includes(:engine)
  end


  
end
