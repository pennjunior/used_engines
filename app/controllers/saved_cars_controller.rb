class SavedCarsController < ApplicationController
  before_action :authenticate_user! # Ensure user is logged in
  before_action :set_car, only: %i[create destroy]
  # def index
  #   @saved_bikes = current_user.saved_bikes.all
  # end
  # Action to save the bike
  include SavedCarsHelper

def create
  @saved_car = current_user.saved_cars.new(car: @car)

  if @saved_car.save
    # BikeMailer.bike_saved_notification(@saved_bike).deliver_now
    respond_to do |format|
      format.html { redirect_to @car, notice: "Bike saved successfully!" }
      format.json { render json: { success: true, saved: true } }
      format.js { render js: update_button_js(@car) }
    end
  else
    respond_to do |format|
      format.html { redirect_to @car, alert: "Already Saved" }
      format.json { render json: { success: false, error: @saved_car.errors.full_messages }, status: :unprocessable_entity }
    end
  end
end


  # Action to unsave the bike
  def destroy
    # if @saved_bike&.destroy
    #   respond_to do |format|
    #     format.html { redirect_to @bike, notice: "Bike removed successfully!" }
    #     format.json { render json: { success: true, saved: false } }
    #   end
    # else
    #   respond_to do |format|
    #     format.html { redirect_to @bike, alert: "Unable to remove bike." }
    #     format.json { render json: { success: false }, status: :unprocessable_entity }
    #   end
    # end
      saved_car = current_user.saved_cars.find_by(car: @car)
      saved_car&.destroy
      redirect_to saved_path, notice: "Car has been removed from saved!"
  end

  private

  def set_car
    @car = Car.friendly.find(params[:car_id]) # Find the car using FriendlyId
  end
end
