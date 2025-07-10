class CartController < ApplicationController
  def add
    session[:cart] ||= []
    session[:cart] << params[:engine_id] unless session[:cart].include?(params[:engine_id])

    render json: {
        status: "Added",
        cart: session[:cart],
        cart_count: session[:cart].size
    }

  end

  def remove
    session[:cart] ||= []
    session[:cart].delete(params[:id].to_i)

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.replace("cart-dropdown", partial: "shared/dropdown") }
      format.html { redirect_to root_path, notice: "Item removed" }
    end
  end

  def show
    @engines = Engine.where(id: session[:cart] || [])
  end
end
