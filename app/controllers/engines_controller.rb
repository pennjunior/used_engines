class EnginesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
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
    @paginated_items = @engines.order(created_at: :desc).page(params[:page]).per(15)
  end


  def show
    @engine = Engine.friendly.find(params[:id])
    @order = EngineOrder.new(engine: @engine)
  end

  def new
    @car_engine = CarEngine.new
    @car_engine.build_engine
  end

  def create
    @car_engine = CarEngine.new(car_engine_params)
    if @car_engine.save
      redirect_to @car_engine, notice: 'Car engine created successfully.'
    else
      render :new
    end
  end

  def edit
    @engine = Engine.friendly.find(params[:id])
    @engine.build_engineable if @engine.engineable.nil?
  end


  def update
    @engine = Engine.friendly.find(params[:id])

    # Attach photos to the engineable (CarEngine)
    if params[:engine][:photos].present?
      @engine.engineable.photos.purge # ⬅️ Delete old photos
      params[:engine][:photos].each do |photo|
        @engine.engineable.photos.attach(photo)
      end
    end

    if @engine.update(engine_params.except(:photos))
      redirect_to @engine, notice: 'Car engine updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @engine = Engine.friendly.find(params[:id])
    @engine.destroy
  end
  private

  def engine_params
    params.require(:engine).permit(
      :title,
      :price,
      :description,
      :slug,
      photos: [], # allow multiple uploads
      engineable_attributes: [
        :id,
        :horsepower,
        :fuel_type,
        :transmission,
        :mileage,
        :manufacturer,
        :year,
        :condition,
        :description
      ]
    )
  end


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
