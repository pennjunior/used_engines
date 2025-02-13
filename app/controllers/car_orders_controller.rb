class CarOrdersController < ApplicationController

  def index
    @orders = CarOrder.all
  end

  def new
    @car = Car.friendly.find(params[:id])
    @order = CarOrder.new(car: @car)
  end

  def create
    @car = Car.friendly.find(params[:car_id])
    @order = @car.car_orders.build(car_order_params)

    # Verify reCAPTCHA first
    if verify_recaptcha(action: "show", minimum_score: 0.5, model: @order) && @order.save
      CarOrderMailer.new_order(@order).deliver_later
      redirect_to order_confirmation_path(@order), notice: "Your order has been placed successfully!"
      if @order.save
        CarOrderMailer.new_order(@order).deliver_later
        redirect_to order_confirmation_path(@order), notice: "Your order has been placed successfully!"
      else
        flash[:alert] = @order.errors.full_messages.join("<br>")
        redirect_to car_path(@car)
      end
    else
      flash[:alert] = "reCAPTCHA verification failed. Please try again."
      redirect_to car_path(@car)
    end
  end


  def edit
    @car = Car.friendly.find(params[:id])
  end

  def delete
    @car = Car.friendly.find(params[:id])

  end

  def confirmation
    @order = CarOrder.find(params[:id])
  end

  private

  def car_order_params
    params.require(:car_order).permit(:name, :email, :phone, :location, :quantity, :total_price)
  end
end
