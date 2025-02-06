class CarOrdersController < ApplicationController

  def new
    @car = Car.friendly.find(params[:id])
    @order = CarOrder.new(car: @car)
  end

  def create
    if params[:car_order][:honeypot].present? #making sure if honeypot filled then likely spam
      Rails.logger.info("Spam detected (honeypot filled): #{params.inspect}")
      redirect_to @car,  alert: "Something Went Wrong"
    end

    @car = Car.friendly.find(params[:car_id])
    @order = @car.car_orders.build(car_order_params)#lets make sure honeypot is empty

    if @order.save
      flash[:notice] = "Order placed successfully!"
      redirect_to car_path(@car)
    else
      if @car_order # Check if @car_order exists at all
        flash[:alert] = @car_order.errors.full_messages.join("<br>")
      else
        flash[:alert] = "Something went wrong. Please try again." # Generic message if @car_order is nil
      end

      redirect_to car_path(@car)
    end
  end

  private

  def car_order_params
    params.require(:car_order).permit(:name, :email, :phone, :location, :quantity, :total_price)
  end
end
