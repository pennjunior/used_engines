class SavedCarsController < ApplicationController
  before_action :authenticate_user! # Ensure user is logged in
  before_action :set_car, only: %i[create destroy]

  def index
  end
  def create
    @saved_car = SavedCar.find_or_create_by(car: @car, user: current_user)

      respond_to do |format|
        format.js
        format.html { redirect_to @car, notice: "Car saved successfully." }
      end

  end

  def destroy
    @saved_car = SavedCar.find_by(car: @car, user: current_user)
    @saved_car&.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to @car, alert: "Car removed from saved list." }
    end
  end

  private

  def set_car
    @car = Car.friendly.find(params[:car_id]) # Ensure FriendlyId is working
  end
end
