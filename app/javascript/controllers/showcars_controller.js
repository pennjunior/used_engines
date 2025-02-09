import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["slide", "thumbnail"];

  connect() {
    console.log("Showing cars");
    this.currentIndex = 0;
    this.showSlide(this.currentIndex);
  }

  next() {
    this.showSlide(this.currentIndex + 1);
  }

  prev() {
    this.showSlide(this.currentIndex - 1);
  }

  showSlide(index) {
    if (index >= this.slideTargets.length) {
      this.currentIndex = 0;
    } else if (index < 0) {
      this.currentIndex = this.slideTargets.length - 1;
    } else {
      this.currentIndex = index;
    }

    this.slideTargets.forEach((slide, i) => {
      slide.style.display = i === this.currentIndex ? "block" : "none";
    });
  }

  selectSlide(event) {
    const selectedIndex = parseInt(event.currentTarget.dataset.index, 10);
    console.log("Selected index:", selectedIndex);
    this.showSlide(selectedIndex - 1); // Convert to zero-based index
  }

}
