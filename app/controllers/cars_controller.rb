class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]
  def index
    # Static or Predefined Options
    @makes = Car.distinct.pluck(:make).uniq
    @models = Car.distinct.pluck(:model).uniq
    @steering_options = Car.distinct.pluck(:steering).uniq
    @years = Car.distinct.pluck(:year).uniq.sort.reverse

    if filter_params_present?
      # Start with all cars and apply filters
      @paginated_items = Car.all
      @paginated_items = @paginated_items.where(make: params[:make]) if params[:make].present?
      @paginated_items = @paginated_items.where(model: params[:model]) if params[:model].present?
      @paginated_items = @paginated_items.where(steering: params[:steering]) if params[:steering].present?
      @paginated_items = @paginated_items.where("price >= ?", params[:min_price].to_f) if params[:min_price].present?
      @paginated_items = @paginated_items.where("price <= ?", params[:max_price].to_f) if params[:max_price].present?
      @paginated_items = @paginated_items.where(year: params[:year]) if params[:year].present?
      @paginated_items = @paginated_items.order(:make, :model).page(params[:page]).per(1)
    elsif params[:query].present?
      @paginated_items = Car.search_by_details(params[:query]).page(params[:page]).per(10)
    elsif params[:category].present?
      @paginated_items = Car.where(category: params[:category]).page(params[:page]).per(10)
    else
      @paginated_items = Car.page(params[:page]).order('RANDOM()').per(10)
    end

    @reviews = Review.order('RANDOM()').all
  end

  def show
    @car = Car.friendly.find(params[:id])
    @order = CarOrder.new(car: @car)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_car
    @car = Car.friendly.find(params[:id])
  end

  def car_order_params
    params.require(:car_order).permit(:name, :email, :phone, :location, :quantity, :total_price)
  end

  # Helper method to check if filter parameters are present
  def filter_params_present?
    params[:make].present? || params[:model].present? || params[:steering].present? ||
      params[:min_price].present? || params[:max_price].present? || params[:year].present?
  end

end
