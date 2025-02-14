class EngineOrdersController < ApplicationController

  def index
    @orders = EngineOrder.all
  end

  def new
    @engine = Engine.friendly.find(params[:id])
    @order = EngineOrder.new(engine: @engine)
  end

  def create
    @engine = Engine.friendly.find(params[:engine_id])
    @order = @engine.engine_orders.build(engine_order_params)

    if @order.save
      redirect_to engine_order_confirmation_path(@order), notice: "Successfully Sent Engine Inquiry"
    else
      flash[:alert] = "Couldn't save"
      redirect_to engine_path(@engine)
    end
    # if verify_recaptcha(model: @order) && @order.save
      # redirect_to engine_order_confirmation_path(@order), notice: "Successfully Sent Engine Inquiry"
    # else
    #   flash[:alert] = @order.errors.full_messages.join("<br>") unless @order.errors.empty?
    #   flash[:alert] ||= "reCAPTCHA verification failed. Please try again."
    #   redirect_to engine_path(@engine)
    # end
  end

  def confirmation
    @order = EngineOrder.find(params[:id])
  end
  private

  def engine_order_params
    params.require(:engine_order).permit(:name, :email, :phone, :location, :quantity, :total_price, :extra_info)
  end
end
