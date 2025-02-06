import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll"
export default class extends Controller {
  static targets = ["row"];

  initialize() {
    console.log("Connected review scroll")
    this.currentOffset = 0; // Track current scroll offset
  }

  slideLeft() {
    const containerWidth = this.element.offsetWidth;
    this.currentOffset = Math.min(this.currentOffset + containerWidth, 0);
    this.rowTarget.style.transform = `translateX(${this.currentOffset}px)`;
  }

  slideRight() {
    const containerWidth = this.element.offsetWidth;
    const maxScroll = -this.rowTarget.scrollWidth + containerWidth;
    this.currentOffset = Math.max(this.currentOffset - containerWidth, maxScroll);
    this.rowTarget.style.transform = `translateX(${this.currentOffset}px)`;
  }
}
