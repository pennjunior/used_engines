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
      OrderMailer.customer_mailing(@order).deliver_now

      OrderMailer.new_order(@order).deliver_later
      # Track conversion
      GoogleAdsConversionService.track_conversion(
        conversion_id: ENV['GOOGLE_CONVERSION_ID_INQUIRY']
      )

      redirect_to engine_order_confirmation_path(@order), notice: "Successfully Sent Engine Inquiry"
    else
      flash[:alert] = "Couldn't save"
      redirect_to engine_path(@engine)
    end
  end

  def confirmation
    @order = EngineOrder.find(params[:id])
  end
  
  private

  def engine_order_params
    params.require(:engine_order).permit(:name, :email, :phone, :location, :quantity, :total_price, :extra_info)
  end
end
