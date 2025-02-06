import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [
    "carMake", "carModel", "carSteering",
    "carMinPrice", "carMaxPrice", "carYear", "carList"
  ];

  connect() {
    // Parse JSON data from data-* attributes
    this.cars = JSON.parse(this.element.dataset.cars || "[]");
    console.log("Cars connected:", this.cars);

    // Render all cars initially
    this.renderCars(this.cars);
  }

  applyFilters() {
    console.log("Applying Filters");

    // Collect filter values
    const make = this.carMakeTarget.value;
    const model = this.carModelTarget.value;
    const steering = this.carSteeringTarget.value;
    const minPrice = parseFloat(this.carMinPriceTarget.value);
    const maxPrice = parseFloat(this.carMaxPriceTarget.value);
    const year = parseInt(this.carYearTarget.value);

    console.log("Filter Criteria:", { make, model, steering, minPrice, maxPrice, year });

    // Apply filtering logic
    const filteredCars = this.cars.filter(car => {
      return (
        (make === "" || car.make === make) &&
        (model === "" || car.model === model) &&
        (steering === "" || car.steering === steering) &&
        (isNaN(minPrice) || car.price >= minPrice) &&
        (isNaN(maxPrice) || car.price <= maxPrice) &&
        (isNaN(year) || car.year === year)
      );
    });

    console.log("Filtered Cars:", filteredCars);

    // Render filtered cars
    this.renderCars(filteredCars);
  }

  renderCars(cars) {
    console.log("Rendering Cars:", cars);

    // Ensure target is defined
    if (!this.hasCarListTarget) {
      console.error("Error: carList target is not defined.");
      return;
    }

    // Render filtered cars or fallback message
    this.carListTarget.innerHTML = cars.length > 0
      ? cars.map(car => `
          <a href="/cars/${car.slug}" class="card">
            ${car.photos && car.photos.length > 0 ? `
              <img src="${car.photos[0]}" alt="${car.make}" class="car-image">
            ` : `
              <div class="no-photo">No photo available</div>
            `}
            <div class="card-info">
              <h4>${car.make} ${car.model} ${car.year}</h4>
              <p>
                <i class="fas fa-tachometer-alt"></i>
                Mileage: ${car.chassisNo} Mi
              </p>
              <p class="price">Price: $${car.price}</p>
            </div>
          </a>
        `).join("")
      : "<p>No cars match your filters.</p>";
  }
}
