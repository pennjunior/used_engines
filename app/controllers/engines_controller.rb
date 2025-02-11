class EnginesController < ApplicationController
  def index
    if params[:query].present?
      @engines = Engine.search_by_details(params[:query])
    else
      @engines = Engine.all
    end

    @steering_options = ["Left", "Right"] # Define your steering options
    @makes = Car.pluck(:make).uniq
    @models = Car.pluck(:model).uniq
    @years = Car.pluck(:year).uniq.sort.reverse # Ensure sorted dropdown

    #for the engine filters
    @paginated_items = Engine.page(params[:page]).order('RANDOM()').per(10)
    set_meta_tags title: "Engines for Sale - Find New & Used Car Engines",
                description: "Shop high-quality car engines for sale, including petrol, diesel, hybrid, and electric engines. Get the best deals on powerful and fuel-efficient engines!",
                keywords: "car engines, engines for sale, used engines, new engines, V8 engine, diesel engine, hybrid engine, performance engines"
  end

  def show
    @engine = Engine.friendly.find(params[:id])
    @order = EngineOrder.new(engine: @engine)

    set_meta_tags title: "#{@engine.title} Engine for Sale",
      description: "Explore top-quality #{@engine.title}, performance upgrades, and reliable replacements. 🚗 AutoBidHub brings you the latest engine innovations and powertrain solutions.",
      keywords: "engines, #{@engine.title}, auto, performance"
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

end
