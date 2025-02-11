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

end
