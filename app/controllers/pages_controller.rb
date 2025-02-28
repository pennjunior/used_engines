class PagesController < ApplicationController
  def home
    # Static or Predefined Options
    @makes = Car.distinct.pluck(:make).uniq
    @models = Car.distinct.pluck(:model).uniq
    @steering_options = Car.distinct.pluck(:steering).uniq
    @years = Car.distinct.pluck(:year).uniq.sort.reverse

    if filter_params_present?
      # Start with all cars and apply filters
      @cars = Car.all
      @cars = @cars.where(make: params[:make]) if params[:make].present?
      @cars = @cars.where(model: params[:model]) if params[:model].present?
      @cars = @cars.where(steering: params[:steering]) if params[:steering].present?
      @cars = @cars.where("price >= ?", params[:min_price].to_f) if params[:min_price].present?
      @cars = @cars.where("price <= ?", params[:max_price].to_f) if params[:max_price].present?
      @cars = @cars.where(year: params[:year]) if params[:year].present?
      @cars = @cars.order(:make, :model).limit(10)
    else
      # No filters applied, render 8 random cars
      @cars = Car.order('RANDOM()').limit(8)
    end

    # Engine Filters
    if params[:query].present?
      @engines = Engine.global_search(params[:query]).all
      @scroll_to_engines = true
    else
      @engines = Engine.order('RANDOM()').limit(5)
    end

    # Random Reviews
    @reviews = Review.order('RANDOM()').all
  end

  def mercedes
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%mercedes%").per(10)
  end

  def toyota
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%toyota%").per(10)
  end

  def audi
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%audi%").per(10)
  end

  def bmw
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%bmw%").per(10)
  end

  def ford
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%ford%").per(10)
  end

  def nissan
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%nissan%").per(10)
  end

  def peugeot
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%peugeot%").per(10)
  end

  def volkswagen
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%volkswagen%").per(10)
  end

  def faq
  end

  def contact
  end

  def how_to_buy
  end

  def how_to_choose_a_car
  end

  def how_to_pay
  end

  def warranty
  end

  def inquiry
  end

  def auction
  end

  def prime_seller
  end

  private

  # Helper method to check if filter parameters are present
  def filter_params_present?
    params[:make].present? || params[:model].present? || params[:steering].present? ||
      params[:min_price].present? || params[:max_price].present? || params[:year].present?
  end

end
