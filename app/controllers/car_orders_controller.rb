class CarOrdersController < ApplicationController

  def new
    @car = Car.friendly.find(params[:id])
    @order = CarOrder.new(car: @car)
  end

  def create
    @car = Car.friendly.find(params[:car_id])
    @order = @car.car_orders.build(car_order_params)#lets make sure honeypot is empty
    if @order.save
      redirect_to cars_path
      flash[:notice] = "Succesfully sent inquiry"
    else
      redirect_to car_path(@car)
      flash[:alert] = "Couldn't save"
    end
    # if verify_recaptcha(model: @order) && @order.save
    #   flash[:notice] = "Successfully sent inquiry"
    #   redirect_to car_path(@car)
    # else
    #   flash[:alert] = @order.errors.full_messages.join("<br>") unless @order.errors.empty?
    #   flash[:alert] ||= "reCAPTCHA verification failed. Please try again."
    #   redirect_to car_path(@car)
    # end
  end

  private

  def car_order_params
    params.require(:car_order).permit(:name, :email, :phone, :location, :quantity, :total_price)
  end
end
