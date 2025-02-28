class EnginesController < ApplicationController
  def index
    # Start with the Engine model, eager load engineable associations
    @engines = Engine.includes(:engineable)

    # Apply search if a query is present
    if params[:query].present?
      @engines = @engines.search_by_details(params[:query])
    end

    # Apply filters
    @engines = filter_engines(@engines, params)

    # Apply pagination to the final filtered/queried results
    @paginated_items = @engines.page(params[:page]).per(15)
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
    if params[:engine_type].present?
      engines = engines.where(engineable_type: params[:engine_type])
    end

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
