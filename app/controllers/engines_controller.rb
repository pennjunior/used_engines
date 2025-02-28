class EnginesController < ApplicationController
  def index
    if params[:query].present?
      @engines = Engine.search_by_details(params[:query])
    else
      @paginated_items = Engine.page(params[:page]).order('RANDOM()').per(15)
    #for the engine filters
    end
    @engines = Engine.includes(:engineable)
    # Appling Filters
    @engines = filter_engines(@engines, params)

  end

  def show
    @engine = Engine.friendly.find(params[:id])
    @order = EngineOrder.new(engine: @engine)
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

  def filter_engines(engines, params)
    # Filter by Engine Type
    engines = engines.where(engineable_type: params[:engine_type]) if params[:engine_type].present?

    # Filter by Price Range
    if params[:min_price].present? && params[:max_price].present?
      engines = engines.where(price: params[:min_price]..params[:max_price])
    end

    # Filter Specific Attributes Based on Type
    case params[:engine_type]
    when "CarEngine"
      engines = engines.joins("JOIN car_engines ON car_engines.id = engines.engineable_id")
      engines = engines.where("car_engines.horsepower >= ?", params[:min_hp]) if params[:min_hp].present?
      engines = engines.where("car_engines.fuel_type = ?", params[:fuel_type]) if params[:fuel_type].present?
    when "TruckEngine"
      engines = engines.joins("JOIN truck_engines ON truck_engines.id = engines.engineable_id")
      engines = engines.where("truck_engines.towing_capacity >= ?", params[:min_towing]) if params[:min_towing].present?
    when "BoatEngine"
      engines = engines.joins("JOIN boat_engines ON boat_engines.id = engines.engineable_id")
      engines = engines.where("boat_engines.power >= ?", params[:min_power]) if params[:min_power].present?
    end

    engines
  end

end
