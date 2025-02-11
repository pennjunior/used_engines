class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]
  def index
    # Static or Predefined Options
    @makes = Car.distinct.pluck(:make).uniq
    @models = Car.distinct.pluck(:model).uniq
    @steering_options = Car.distinct.pluck(:steering).uniq
    @years = Car.distinct.pluck(:year).uniq.sort.reverse
      set_meta_tags title: "Find New & Used Cars for Sale - AutoBidHub",
                    description: "Browse a massive selection of new and used cars from top brands like Toyota, BMW, Mercedes, Ford, and more. Find the best car deals today!",
                    keywords: "cars for sale, used cars, new cars, buy a car, affordable cars, best car deals, car marketplace"

    if filter_params_present?
      # Start with all cars and apply filters
      @paginated_items = Car.all
      @paginated_items = @paginated_items.where(make: params[:make]) if params[:make].present?
      @paginated_items = @paginated_items.where(model: params[:model]) if params[:model].present?
      @paginated_items = @paginated_items.where(steering: params[:steering]) if params[:steering].present?
      @paginated_items = @paginated_items.where("price >= ?", params[:min_price].to_f) if params[:min_price].present?
      @paginated_items = @paginated_items.where("price <= ?", params[:max_price].to_f) if params[:max_price].present?
      @paginated_items = @paginated_items.where(year: params[:year]) if params[:year].present?
      @paginated_items = @paginated_items.order(:make, :model).page(params[:page]).per(15)
    elsif params[:query].present?
      @paginated_items = Car.search_by_details(params[:query]).page(params[:page]).per(15)
    elsif params[:category].present?
      @paginated_items = Car.where(category: params[:category]).page(params[:page]).per(15)
    else
      @paginated_items = Car.page(params[:page]).order('RANDOM()').per(15)
    end

    @reviews = Review.order('RANDOM()').all
  end

  def show
    @car = Car.friendly.find(params[:id])
    @order = CarOrder.new(car: @car)

    set_meta_tags title: "#{@car.make} #{@car.model} #{@car.year} for Sale",
                description: "Find the best deals for #{@car.make} #{@car.model}!
                Stay updated with the hottest car shows and auto exhibitions! 🚘 AutoBidHub brings you exclusive coverage of classic car meets, luxury auto expos, and the latest vehicle showcases.",
                keywords: "cars, #{@car.make}, #{@car.model}, auto"
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
