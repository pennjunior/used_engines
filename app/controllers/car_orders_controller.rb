require 'net/http'
require 'json'

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
    if @order.save
      CarOrderMailer.new_order(@order).deliver_later
      redirect_to order_confirmation_path(@order), notice: "Your order has been placed successfully!"
    else
      flash[:alert] = "Couldn't save order."
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
    params.require(:car_order).permit(:name, :email, :phone, :location, :quantity, :total_price, :extra_info)
  end
end
