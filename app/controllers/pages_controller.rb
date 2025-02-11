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
    set_meta_tags title: "Mercedes-Benz Cars for Sale - AutoBidHub",
                  description: "Explore a wide selection of new and used Mercedes-Benz cars for sale. Find luxury sedans, SUVs, and performance vehicles at unbeatable prices.",
                  keywords: "Mercedes, Mercedes-Benz, luxury cars, used Mercedes, new Mercedes, Mercedes SUV"
  end

  def toyota
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%toyota%").per(10)
    set_meta_tags title: "Toyota Cars for Sale - Reliable & Affordable",
                  description: "Find the best deals on Toyota cars, including Camry, Corolla, RAV4, and more. Browse our selection of reliable and fuel-efficient Toyota vehicles.",
                  keywords: "Toyota, Toyota Camry, Toyota Corolla, used Toyota, hybrid cars, Toyota trucks"
  end

  def audi
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%audi%").per(10)
    set_meta_tags title: "Audi Cars for Sale - Performance & Luxury",
                  description: "Discover high-performance and luxury Audi cars. From the Audi A4 to the Q7, explore top Audi models available for sale.",
                  keywords: "Audi, Audi A4, Audi Q7, Audi SUVs, German cars, luxury performance cars"
  end

  def bmw
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%bmw%").per(10)
    set_meta_tags title: "BMW Cars for Sale - Ultimate Driving Machines",
                  description: "Find the best BMW cars, including sedans, SUVs, and sports cars. Get great deals on BMW 3 Series, X5, M models, and more.",
                  keywords: "BMW, BMW 3 Series, BMW X5, BMW M, used BMW, luxury sports cars"
  end

  def ford
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%ford%").per(10)
    set_meta_tags title: "Ford Cars & Trucks for Sale - Best Deals",
                  description: "Explore a wide range of Ford vehicles, from the legendary Mustang to the powerful F-150. Find new and used Ford cars at the best prices.",
                  keywords: "Ford, Ford Mustang, Ford F-150, Ford trucks, Ford SUVs, American cars"
  end

  def nissan
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%nissan%").per(10)
    set_meta_tags title: "Nissan Cars for Sale - Innovation & Reliability",
                  description: "Shop Nissan cars, SUVs, and trucks, including the Altima, Rogue, and GT-R. Find reliable and fuel-efficient Nissan vehicles.",
                  keywords: "Nissan, Nissan Altima, Nissan Rogue, Nissan GT-R, used Nissan, Japanese cars"
  end

  def peugeot
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%peugeot%").per(10)
    set_meta_tags title: "Peugeot Cars for Sale - European Elegance",
                  description: "Discover Peugeot cars, including hatchbacks, sedans, and SUVs. Find the best deals on stylish and fuel-efficient Peugeot models.",
                  keywords: "Peugeot, Peugeot 208, Peugeot 3008, Peugeot SUV, used Peugeot, French cars"
  end

  def volkswagen
    @paginated_items = Car.page(params[:page]).where("make ILIKE ?", "%volkswagen%").per(10)
    set_meta_tags title: "Volkswagen Cars for Sale - German Engineering",
                  description: "Find Volkswagen cars for sale, from the classic Golf and Jetta to the Tiguan SUV. Get great deals on reliable Volkswagen vehicles.",
                  keywords: "Volkswagen, VW Golf, VW Jetta, Volkswagen Tiguan, used Volkswagen, German cars"
  end



  private

  # Helper method to check if filter parameters are present
  def filter_params_present?
    params[:make].present? || params[:model].present? || params[:steering].present? ||
      params[:min_price].present? || params[:max_price].present? || params[:year].present?
  end
end
